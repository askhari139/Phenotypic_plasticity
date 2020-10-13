g=gramm('x',W.States,'y',W.Frequency,'color',W.Method);
g.geom_bar();
g.draw();

load example_data;
g=gramm('x',cars.Model_year,'y',cars.MPG,'color',cars.Cylinders);
%%% 
% Subdivide the data in subplots horizontally by region of origin using
% facet_grid()
g.facet_grid([],cars.Origin_Region);
%%%
% Plot raw data as points
g.geom_point();
%%%
% Plot linear fits of the data with associated confidence intervals
g.stat_glm();
%%%
% Set appropriate names for legends
g.set_names('column','Origin','x','Year of production','y','Fuel economy (MPG)','color','# Cylinders');
%%%
% Set figure title
g.set_title('Fuel economy of new cars between 1970 and 1982');
%%%
% Do the actual drawing
figure('Position',[100 100 800 400]);
g.draw();