params = {'Act_of_XToSNAIL', 'Num_of_XToSNAIL', 'Trd_of_XToSNAIL', 'Inh_of_miR34ToSNAIL', 'Num_of_miR34ToSNAIL', 'Trd_of_miR34ToSNAIL', 'Inh_of_SNAILToSNAIL', 'Num_of_SNAILToSNAIL', 'Trd_of_SNAILToSNAIL', 'Inh_of_SNAILTomiR34', 'Num_of_SNAILTomiR34', 'Trd_of_SNAILTomiR34', 'Inh_of_SNAILTomiR200', 'Num_of_SNAILTomiR200', 'Trd_of_SNAILTomiR200', 'Act_of_SNAILToZEB', 'Num_of_SNAILToZEB', 'Trd_of_SNAILToZEB', 'Inh_of_miR200ToZEB', 'Num_of_miR200ToZEB', 'Trd_of_miR200ToZEB', 'Inh_of_miR200ToKEAP1', 'Num_of_miR200ToKEAP1', 'Trd_of_miR200ToKEAP1', 'Act_of_ZEBToZEB', 'Num_of_ZEBToZEB', 'Trd_of_ZEBToZEB', 'Inh_of_ZEBTomiR34', 'Num_of_ZEBTomiR34', 'Trd_of_ZEBTomiR34', 'Inh_of_ZEBTomiR200', 'Num_of_ZEBTomiR200', 'Trd_of_ZEBTomiR200', 'Inh_of_ZEBToEcadherin', 'Num_of_ZEBToEcadherin', 'Trd_of_ZEBToEcadherin', 'Inh_of_EcadherinToZEB', 'Num_of_EcadherinToZEB', 'Trd_of_EcadherinToZEB', 'Inh_of_EcadherinToNRF2', 'Num_of_EcadherinToNRF2', 'Trd_of_EcadherinToNRF2', 'Inh_of_KEAP1ToNRF2', 'Num_of_KEAP1ToNRF2', 'Trd_of_KEAP1ToNRF2', 'Inh_of_NRF2ToSNAIL', 'Num_of_NRF2ToSNAIL', 'Trd_of_NRF2ToSNAIL', 'Prod_of_X', 'Deg_of_X', 'Prod_of_miR34', 'Deg_of_miR34', 'Prod_of_SNAIL', 'Deg_of_SNAIL', 'Prod_of_miR200', 'Deg_of_miR200', 'Prod_of_ZEB', 'Deg_of_ZEB', 'Prod_of_Ecadherin', 'Deg_of_Ecadherin', 'Prod_of_KEAP1', 'Deg_of_KEAP1', 'Prod_of_NRF2', 'Deg_of_NRF2'};
prs_file = 'NRF2_0.prs';
prs_new = 'NRF2_0.dat';
copyfile(prs_file, prs_new);
par_list = readtable(prs_new);
par_list = string(par_list.Parameter);
par_order = zeros(length(par_list),1);
for i = 1:length(params)
    par_order(i) = find(par_list == params(i));
end
n_nodes = sum(contains(par_list, 'Prod'));
par_file = 'NRF2_0_parameters.dat';
parameters = table2array(readtable(par_file));
parameters =  parameters(:, 3:end);
tspan = 1:100;
ss_tot = zeros(1, n_nodes+1);
noConvergence = zeros(1, n_nodes+1);
dlmwrite('noConv.csv', noConvergence, 'delimiter', ',');
parfor i = 1:size(parameters,1)
    p = parameters(i,par_order);
    p1 = parameters(i,:);
    ss=zeros(1,n_nodes);
    lims = p1(1:n_nodes)./p1((1:n_nodes) + n_nodes);
    for j = 1:100
        IC = lims.*rand(1,n_nodes);
        y0 = IC;
        [t y] = ode23s(@(t,y)NRF2_0(t,y,p), tspan, y0);
        for k = 1:50
        if sum(round((y(end, :) - y((end-1), :)), 3)) ~= 0
            y0 = y(end,:);
            [t y] = ode23s(@(t,y)NRF2_0(t,y,p), tspan, y0);
        else
            break;
        end
        if k == 50
            noConvergence = [i IC]
            dlmwrite('noConv.csv', noConvergence, 'delimiter', ',', '-append');
        end
        end
        if all(abs(sum(ss - y(end, :),2)) > 0.01)
            ss = [ss;y(end, :)];
        end
    end
    ss = [repelem(i, size(ss(2:end,:),1))' ss(2:end, :)];
    ss_tot = [ss_tot; ss];
end
ss_tot = unique(ss_tot, 'rows');
ss_tot = array2table(ss_tot(2:end,:));
writetable(ss_tot, 'NRF2_0_ss.csv');
