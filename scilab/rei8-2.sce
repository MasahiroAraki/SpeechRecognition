clear; clf();
function z=normal(x,y)
    z = 1/((2*%pi) * det(S)^(0.5))..
        * exp(-0.5 * ([x;y]-m)' * inv(S) * ([x;y]-m));
endfunction

X1 = [3 4; 3 8; 2 6; 4 6];    // クラス1のデータ
X2 = [3 0; 1 -2; 5 -2; 3 -4]; // クラス2のデータ
// 各クラスの平均ベクトルと共分散行列
m1 = mean(X1, 'r')';
m2 = mean(X2, 'r')';
S1 = cov(X1);
S2 = cov(X2);

x = [-1:0.5:8]; y = [-8:0.5:12]; // プロットする範囲
m = m1; S = S1;
fplot3d(x,y,normal,flag=[2,2,4]);
m = m2; S = S2;
fplot3d(x,y,normal,flag=[4,2,4],alpha=89.5,theta=-62);
