function J = computeCostMulti(X, y, theta)
m = length(y); % number of training examples

J = 0;
hx = X * theta;

square = ((hx - y) .^ 2);

J = (1/(2*m)) * sum(square);
end
