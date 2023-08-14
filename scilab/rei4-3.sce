clear;
X = [1.0; 0.5; -0.2; -1.3]; // 学習データ
y = [1 1 2 2]'; // 正解クラス
w = [0.2, 0.3]'; // 初期重み
roh = 0.5; // 学習係数
flag = %T;  // 重みに変更があれば TRUE(%T)
[n, d] = size(X);
X = [ones(n,1), X]; // x_0 軸を追加

while flag
  flag = %F;
  for i = 1:n
    x = X(i,:)'
    g = w' * x;
    disp(w');
    if y(i) == 1 & g < 0
      w = w + roh * x;
      flag = %T;
    elseif y(i) == 2 & g > 0
      w = w - roh * x;
      flag = %T;
    end
  end
end
printf("Results: w0=%6.3f, w1=%6.3f\n",w(1), w(2));
