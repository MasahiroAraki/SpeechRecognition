clear;
X=[3, 2; 3, 4; 5, 4; 5, 6]; // 元データ
// 元データの表示
subplot(1, 2, 1); title('original data');
plot2d(X(:, 1), X(:, 2), style=-9, rect=[-8,-8,8,8], axesflag=4);

// 標準化計算 （SX = wcenter(X, 'r') としてもよい）
[n, d] = size(X);
SX = (X - repmat(mean(X, 'r'), n, 1)) * diag(1 ./ stdev(X, 'r'));

// 標準化後のデータの表示
subplot(1, 2, 2); title('after standardization');
plot2d(SX(:, 1), SX(:, 2), style=-4, rect=[-2,-2,2,2], axesflag=4);
