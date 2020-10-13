f1 = imread("C1C1.png");
f2 = imread("C1C2.png");
f3 = imread("C1C3.png");
f4 = imread("C2C1.png");
f5 = imread("C2C2.png");
f6 = imread("C2C3.png");
f7 = imread("C3C1.png");
f8 = imread("C3C2.png");
f9 = imread("C3C3.png");

h1 = imread("C1H.png");
h2 = imread("C2H.png");
h3 = imread("C3H.png");

montage({f1, f2, f3, h1, f4, f5, f6, h2,f7,f8,f9,h3}, 'Size', [3,4])

h1 = imread("C1p.png");
h2 = imread("C1H.png");
h3 = imread("C2P.png");
h4 = imread("C2H.png");
montage({h1, h2}, 'Size', [2,1])