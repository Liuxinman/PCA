function plot2d_pca(X)
[~, X_centroid] = center(X);
[~, eig_values, eig_vectors] = PCA(X);
eig_values_1 = 2*sqrt(eig_values(1,1));
eig_values_2 = 2*sqrt(eig_values(2,2));
eigen_vectors_1 = eig_vectors(:, 1) / norm(eig_vectors(:, 1), 2);
eigen_vectors_2 = eig_vectors(:, 2) / norm(eig_vectors(:, 2), 2);
eigen_vectors_1 = eig_values_1 * eigen_vectors_1;
eigen_vectors_2 = eig_values_2 * eigen_vectors_2;
hold on
scatter(X(:, 1), X(:, 2));
plot([X_centroid(1), X_centroid(1) + eigen_vectors_1(1)], [X_centroid(2), X_centroid(2) + eigen_vectors_1(2)],'LineWidth', 1, 'Color', 'b');
plot([X_centroid(1), X_centroid(1) + eigen_vectors_2(1)], [X_centroid(2), X_centroid(2) + eigen_vectors_2(2)],'LineWidth', 1, 'Color', 'r');
hold off
axis equal
end