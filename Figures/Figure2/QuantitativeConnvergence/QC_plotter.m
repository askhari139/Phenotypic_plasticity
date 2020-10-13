root = cd;
files = dir(root);
dirFlags = [files.isdir];
dirs = files(dirFlags);
Num = [100 1000 10000 100000];
colors = [0,0,1; 1,0,1;1,0,0;0,0,0];
for d  = 3:length(dirs)
    figure1 = figure;
    axes1 = axes('Parent',figure1);
    hold on;
    cd(dirs(d).name);
    for f = 1:4
        fl = sprintf('%d.csv', Num(f));
        G = readtable(fl);
        G = sortrows(G, "Coord");
%         s = scatter(G.Coord, G.Average, [], colors(f,:), 'filled');
        e = errorbar(G.Coord, G.Average,G.Sdev, 'vertical', 'Marker', '.', 'LineStyle', 'none');
        set(e, 'color', colors(f,:), 'LineWidth', 2, 'MarkerSize', 20,...
            'DisplayName', num2str(Num(f)));
%         set(s, 'LineWidth', 2);
    end
    title("OCT4");
    xticks(1:length(G.State));
%     xticklabels(flip(dec2bin(G.State)));
    xticklabels(G.State);
    set(axes1,'FontName','Arial','FontSize',20,'FontWeight','bold','XTickLabelRotation',45);
    xlim([0.35 (length(G.State) + 0.5)]);
    legend(Num);
    box on;
    ylabel("Frequency");
    cd("..")
end
