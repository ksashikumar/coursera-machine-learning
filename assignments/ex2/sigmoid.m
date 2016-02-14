function g = sigmoid(z)

f=@(h) 1 ./ (1 + exp(-h)); % 1 / (1 + exp(-h));


g = f(z);

end
