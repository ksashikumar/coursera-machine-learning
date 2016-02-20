function p = predict(Theta1, Theta2, X)
m = size(X, 1);
num_labels = size(Theta2, 1);

p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];

for j=1:m,

  z2 = sigmoid(X(j,:) * Theta1');

  z2 = [1 z2];

  [trash,p(j)] = max(sigmoid(z2 * Theta2'));
end;
end