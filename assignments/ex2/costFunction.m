function [J, grad] = costFunction(theta, X, y)

m = length(y);

J = 0;
grad = zeros(size(theta));

hx =  sigmoid(X*theta);

cost1 = -y' * log(hx);

cost2 = (1 - y') * log(1 - hx);

J = (1 / m) * (cost1 - cost2);

grad = (1 / m) * ((hx - y)' * X);

end
