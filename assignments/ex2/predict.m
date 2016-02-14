function p = predict(theta, X)

m = size(X, 1); 

p = zeros(m, 1);

f=@(n) round(n);

s = sigmoid(X * theta);

p = f(s);


end
