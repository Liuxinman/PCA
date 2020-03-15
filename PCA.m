function [covariance, eig_values, eig_vectors] = PCA(X)
[X_centered, ~] = center(X);
covariance = X_centered' * X_centered / size(X, 1);
[eig_vectors, eig_values] = eig(covariance);
end