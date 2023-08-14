clear;
x=[1.0, 0.5, -0.2, -0.4, -1.3, -2.0]; // 学習データ
y=[1, 1, 0, 1, 0, 0]; // 教師信号
n = length(x) // 学習データの個数
X=[ones(1,n); x]';  // 特徴ベクトルに0次元目を追加して転置
eps=1e-5;  // 重みの変化量がこれ以下になれば終了
w0=[0.2, 0.3]'; rho = 0.1;

for i=1:n*1000
  j=modulo(i,n)+1;
  w = w0 - rho * (w0' * X(j,:)' - y(j)) * X(j,:)';
  if norm(w-w0) < eps 
      break;
  end;
  printf("w0 = %6.3f, w1 = %6.3f\n",w(1), w(2));
  w0 = w;
end

printf("Results: w0 = %6.3f, w1 = %6.3f\n",w(1), w(2))
