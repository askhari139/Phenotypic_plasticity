params = {'Inh_of_miR200ToZEB', 'Num_of_miR200ToZEB', 'Trd_of_miR200ToZEB', 'Inh_of_ZEBTomiR200', 'Num_of_ZEBTomiR200', 'Trd_of_ZEBTomiR200', 'Act_of_ZEBToZEB', 'Num_of_ZEBToZEB', 'Trd_of_ZEBToZEB', 'Inh_of_SNAILTomiR200', 'Num_of_SNAILTomiR200', 'Trd_of_SNAILTomiR200', 'Act_of_SNAILToZEB', 'Num_of_SNAILToZEB', 'Trd_of_SNAILToZEB', 'Inh_of_ZEBToGRHL2', 'Num_of_ZEBToGRHL2', 'Trd_of_ZEBToGRHL2', 'Inh_of_GRHL2ToZEB', 'Num_of_GRHL2ToZEB', 'Trd_of_GRHL2ToZEB', 'Prod_of_miR200', 'Deg_of_miR200', 'Prod_of_ZEB', 'Deg_of_ZEB', 'Prod_of_SNAIL', 'Deg_of_SNAIL', 'Prod_of_GRHL2', 'Deg_of_GRHL2'};
prs_file = 'GRHL2_1.prs';
prs_new = 'GRHL2_1.dat';
copyfile(prs_file, prs_new);
par_list = readtable(prs_new);
par_list = string(par_list.Parameter);
par_order = zeros(length(par_list),1);
for i = 1:length(params)
    par_order(i) = find(par_list == params(i));
end
n_nodes = sum(contains(par_list, 'Prod'));
par_file = 'GRHL2_1_parameters.dat';
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
        y0 = IC
        [t y] = ode23s(@(t,y)GRHL2_1(t,y,p), tspan, y0);
        for k = 1:50
        if sum(round((y(end, :) - y((end-1), :)), 3)) ~= 0
            y0 = y(end,:);
            [t y] = ode23s(@(t,y)GRHL2_1(t,y,p), tspan, y0);
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
writetable(ss_tot, 'GRHL2_1_ss.csv');
