function ok = randomizer(topo_file, n_nets)  
    file_dat = tdfread(topo_file, ' ');
    file_dat = struct2table(file_dat);
    if size(file_dat,2) ~= 3
        file_dat = tdfread(topo_file);
        file_dat = struct2table(file_dat);
    end
    rand_tab = file_dat;
    rands = unique(perms(file_dat.Type), 'rows', 'stable');
    if n_nets > size(rands,1)
        n_nets = size(rands,1);
    end
    rands = rands';
    n = 1:size(rands,2);
    n_cols = datasample(n, n_nets, 'Replace', false);
    for i = n_cols
        rand_tab.Type = rands(:,i);
        f_name = strcat(strrep(topo_file, ".topo", ""), "_", int2str(i));
        f1 = strcat(f_name, ".dat");
        f2 = strcat(f_name, ".topo");
        writetable(rand_tab, f1, 'Delimiter', '\t');
        movefile(f1, f2);
    end
        