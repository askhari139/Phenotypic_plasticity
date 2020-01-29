%% Info collection

network = input("Enter the network name : ", 's');
n_sol_files = input("Enter the list of solution numbers : ");
n_nodes = str2double(input("Enter the number of nodes : ", 's'));
mes_node = str2double(input("Node number that is Mesenchymal : ", 's'));
epi_node = str2double(input("Node number that is Epithelial : ", 's'));
node_names = strings(n_nodes,1);
prs_file = strcat(network, ".prs");
prs_new = strcat(network, ".dat");
copyfile(prs_file, prs_new);
par_list = readtable(prs_new);
par_list = string(par_list.Parameter);
for i = 1:n_nodes
    node_names(i,1) = replace(par_list(i), "Prod_of_", "");
    node_names(i,1) = replace(node_names(i,1), "-", "");
end

%% coalition and z-score calculation
dat = zeros(1,n_nodes);
dat_coal = zeros(1, n_nodes+1);
corrupted = [];
for i = n_sol_files % to collate all solutions
    f = sprintf(strcat(network,'_solution_%d.dat'), i); %Solution file
    d_master = table2array(readtable(f)); % read it
    
    d = d_master(:, 3:end); % remove the parameter number and n_sols columns
    if size(d,2) ~= i*n_nodes
        disp(strcat(f, "is corrupted"));
        corrupted = [corrupted i];
        continue;
    end
    if i == 1
        dat = [dat;d]; % directly append to dat if n_sols == 1
        dat_coal = [dat_coal; d_master(:, [1, 3:end])];
    else
        for j = 0:(i-1) % could implemet reshape here
            colz = (1:n_nodes) + n_nodes*j; % split and append the matrix otherwise
            dat = [dat; d(:, colz)]; % append to dat
            dat_coal = [dat_coal; d_master(:, [1 colz+2])];
        end
    end
end
dat_coal = array2table(dat_coal(2:end, :));
dat_coal.Properties.VariableNames = ["ParameterIndex";node_names];
writetable(dat_coal, strcat(network, "_nfull_mat.csv"));
for i = corrupted
    n_sol_files = n_sol_files(n_sol_files ~= i);
end
dat = dat(2:end, :);
M = mean(dat);
S = std(dat);
phases = [];
dat_z = zeros(1,(n_nodes + 1));
for i = n_sol_files % to calculate z-scores and phases
    f = sprintf(strcat(network,'_solution_%d.dat'), i);
    d_master = table2array(readtable(f)); % read
    d = d_master(:, 3:end); % remove parameter and n_sols
    if i == 1
        d1 = (d-M)./S;
        writetable(table([d_master(:, 1:2) d1]), sprintf(strcat(network,'_solution_mat_z_%d.dat'), i));
        dat_z = [dat_z;[d_master(:,1) d1]];
        c1 = d1(:,epi_node).*d1(:,mes_node);
        c2 = d1(:,epi_node) + d1(:,mes_node);
        c = repelem("", length(c1))';
        c(c1<0 & d1(:,epi_node)<0) = "M";
        c(c1<0 & d1(:,epi_node)>0) = "E";
        c(c1>0 & d1(:,epi_node)>0) = "H";
        c = c(c ~= "");
        phases = [phases;c];
    else
        cm = strings([size(d,1), i]);
        d_m = d_master(:, 1:2);
        par_col = d_master(:, 1);
        for j = 0:(i-1)
            colz = (1:n_nodes) + n_nodes*j;
            d1 = (d(:, colz) - M)./S;
            d_m = [d_m d1];
            dat_z = [dat_z; [par_col d1]];
            c1 = d1(:,epi_node).*d1(:,mes_node);
            c2 = d1(:,epi_node) + d1(:,mes_node);
            c = repelem("", length(c1))';
            c(c1<0 & d1(:,epi_node)<0) = "M";
            c(c1<0 & d1(:,epi_node)>0) = "E";
            c(c1>0 & d1(:,epi_node)>0) = "H";
            cm(:, (j+1)) = c;
        end
        writetable(table(d_m), sprintf(strcat(network,'_solution_mat_z_%d.dat'), i));
        cm = sort(cm')'; % to equate ME and EM
        c = join(cm, "");
        phases = [phases;c];
    end
end
phase_char = char(phases);
phases = arrayfun(@(x) strrep(string(unique(phase_char(x,:))), " ", ""), 1:size(phase_char,1));
figure;
phase_tab = cell2table(tabulate(phases));
phase_tab = sortrows(phase_tab, 2, 'descend');
bar(1:size(phase_tab,1),phase_tab.Var3/100);
xticks(1:size(phase_tab,1));
xticklabels(phase_tab.Var1);
xtickangle(90);
writetable(phase_tab, strcat(network, "_phase_frequency.csv"));
dat_z = array2table(dat_z(2:end,:));
dat_z.Properties.VariableNames = ["ParameterIndex";node_names];
writetable(dat_z, strcat(network, "_zfull_mat.csv"));

%% g/k normalization----

parameters = strcat(network, "_parameters.dat");
parameters = table2array(readtable(parameters));
weights = parameters(:,(2 + (1:n_nodes)))./parameters(:, (n_nodes + 2 + (1:n_nodes)));
weights = array2table([parameters(:, 1) weights]);
weights.Properties.VariableNames = ["ParameterIndex"; strcat("W_", node_names)];
df = table2array(join(dat_coal, weights));
dat_norm = [df(:,1) ((2.^df(:, 2:n_nodes+1))./df(:, (n_nodes + 1) + (1:n_nodes)))];
d2 = log2(dat_norm(:, 2:end));
colz = any(isnan(d2), 2);
d2(colz, :) = [];
dat_norm(colz, :) = [];
dat_norm_z = array2table([dat_norm(:,1) (d2-(mean(d2)))./std(d2)]);
dat_norm_z.Properties.VariableNames = ["ParameterIndex";node_names];
writetable(dat_norm_z, strcat(network, "_norm_zfull_mat.csv"));

%% Discretization
dat_discrete = table2array(dat_norm_z);
dat_discrete = array2table([dat_discrete(:,1) sign(dat_discrete(:, 2:end))]);
dat_discrete.Properties.VariableNames = ["ParameterIndex";node_names];
p = tabulate(dat_discrete.ParameterIndex);
p = array2table([p(:,1) 1./p(:,2)]);
p.Properties.VariableNames = ["ParameterIndex", "Weight"];
dat_discrete = join(dat_discrete, p);
writetable(dat_discrete, strcat(network, "_discrete_mat.csv"));

%% Unique states
d2 = table2array(dat_discrete);
d2 = join(string(d2(:, 3:(n_nodes+1))), "");
length(unique(d2))
