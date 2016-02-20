function [J, grad] = lrCostFunction(theta, X, y, lambda)

m = length(y);

J = 0;
grad = zeros(size(theta));

hx =  sigmoid(X*theta);

cost1 = -y' * log(hx);

cost2 = (1 - y') * log(1 - hx);

thetaZero = theta;

thetaZero(1) = 0;

lambaJ = (lambda / (2 * m)) * sum(thetaZero .^ 2);

lambdaG = lambda / m * thetaZero;

J = (1 / m) * (cost1 - cost2) + lambaJ;

grad = ((1/m) * (X' * (hx - y))) + lambdaG;

end