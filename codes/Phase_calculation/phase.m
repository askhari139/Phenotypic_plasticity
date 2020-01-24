network = input("Enter the network name : ", 's');
n_sol_files = input("Enter the list of solution numbers : ");
n_nodes = str2double(input("Enter the number of nodes : ", 's'));
mes_node = str2double(input("Node number that is Mesenchymal : ", 's'));
epi_node = str2double(input("Node number that is Epithelial : ", 's'));
node_names = strings(n_nodes,1);

% for i = 1:n_nodes
%     node_names(i,1) = input(sprintf("Enter the node %d name : ", i), 's');
% end
dat = zeros(1,n_nodes);
corrupted = [];
for i = n_sol_files % to collate all solutions
    f = sprintf(strcat(network,'_solution_%d.dat'), i); %Solution file
    d = table2array(readtable(f)); % read it
    d = d(:, 3:end); % remove the parameter number and n_sols columns
    if size(d,2) ~= i*n_nodes
        disp(strcat(f, "is corrupted"));
        corrupted = [corrupted i];
        continue;
    end
    if i == 1
        dat = [dat;d]; % directly append to dat if n_sols == 1
    else
        for j = 0:(i-1) % could implemet reshape here
            colz = (1:n_nodes) + n_nodes*j; % split and append the matrix otherwise
            dat = [dat; d(:, colz)]; % append to dat
        end
    end
end
for i = corrupted
    n_sol_files = n_sol_files(n_sol_files ~= i);
end
dat = dat(2:end, :);
M = mean(dat);
S = std(dat);
phases = [];
dat_z = zeros(1,n_nodes);
for i = n_sol_files % to calculate z-scores and phases
    f = sprintf(strcat(network,'_solution_%d.dat'), i);
    d_master = table2array(readtable(f)); % read
    d = d_master(:, 3:end); % remove parameter and n_sols
    if i == 1
        d1 = (d-M)./S;
        writetable(table([d_master(:, 1:2) d1]), sprintf(strcat(network,'_solution_mat_z_%d.dat'), i));
        dat_z = [dat_z;d1];
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
        for j = 0:(i-1)
            colz = (1:n_nodes) + n_nodes*j;
            d1 = (d(:, colz) - M)./S;
            d_m = [d_m d1];
            dat_z = [dat_z; d1];
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
figure;
phase_tab = cell2table(tabulate(phases));
phase_tab = sortrows(phase_tab, 2, 'descend');
bar(1:size(phase_tab,1),phase_tab.Var3/100);
xticks(1:size(phase_tab,1));
xticklabels(phase_tab.Var1);
xtickangle(90);
writetable(phase_tab, strcat(network, "_phase_frequency.csv"));
dat_z = array2table(dat_z(2:end,:));
% dat_z.Properties.VariableNames = node_names;
writetable(dat_z, strcat(network, "_zfull_mat.csv"));