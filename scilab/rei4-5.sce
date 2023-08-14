clear;
X = [1,4; 2,3; 4,3; 5,4; 2,1; 3,2; 3,3; 4,1]; // 学習データ
y = [1 1 1 1 2 2 2 2]'; // 正解クラス
k = 3;
x = [3, 4]'; // 入力
[n, d] = size(X);

// 入力と学習データとの距離を計算
dist = sqrt(sum((X-repmat(x', [n,1])) .^2, 'c'));

// 上位k個のクラスを取得
[A, B] = gsort(dist, 'g', 'i');
near = y(B(1:k));

// 多数決
[val, ind] = max(members([1,2],near))
printf("Result: class %d", ind);
