f1 = imread("EMT_RACIPE_JSD_plot.tif");
f2 = imread("EMT_RACIPE_Pos_plot.tif");
f3 = imread("EMT_RACIPE2_JSD_plot.tif");
f4 = imread("EMT_RACIPE2_Pos_plot.tif");
f5 = imread("EMT_RACIPE_3d_plot.tif");
f6 = imread("EMT_RACIPE2_3d_plot.tif");



montage({f1,f2,f5,f3,f4,f6},'Size', [2 3]);