function p = predictOneVsAll(all_theta, X)

m = size(X, 1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];

all_preds = all_theta * X';
[max_vals, max_ndxs] = max(all_preds);
p = max_ndxs';


end