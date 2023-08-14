clear;
SX=[-1, -sqrt(2); -1, 0; 1, 0; 1, sqrt(2)]; // データ
[lambda, facpr, comprinc] = pca(SX);

// 2次元から1次元への変換
DSX = comprinc(:,1);
plot2d(DSX, zeros(1, length(DSX)), ...
       rect=[-2,-1,2,1], style=-9, axesflag=4);
