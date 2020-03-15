function [X_centered, X_centroid] = center(X)
X_centroid = mean(X);
X_centered = X - (X_centroid' * ones(1, size(X, 1)))';
end