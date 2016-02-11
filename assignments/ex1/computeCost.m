function J = computeCost(X, y, theta)
m = length(y); 

J = 0;
hx = X * theta;

square = (hx - y) .^ 2;

J = (sum(square))/(2*m);

end
