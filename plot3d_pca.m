function plot3d_pca(X)
[~, X_centroid] = center(X);
[~, eig_values, eig_vectors] = PCA(X)

eig_values_1 = 2*sqrt(eig_values(1,1));
eig_values_2 = 2*sqrt(eig_values(2,2));
eig_values_3 = 2*sqrt(eig_values(3,3));

eigen_vectors_1 = eig_vectors(:, 1) / norm(eig_vectors(:, 1), 2);
eigen_vectors_2 = eig_vectors(:, 2) / norm(eig_vectors(:, 2), 2);
eigen_vectors_3 = eig_vectors(:, 3) / norm(eig_vectors(:, 3), 2);

eigen_vectors_1 = eig_values_1 * eigen_vectors_1;
eigen_vectors_2 = eig_values_2 * eigen_vectors_2;
eigen_vectors_3 = eig_values_3 * eigen_vectors_3;

hold on
scatter3(X(:, 1), X(:, 2), X(:, 3), 8, "filled");
plot3([X_centroid(1), X_centroid(1) + eigen_vectors_1(1)], [X_centroid(2), X_centroid(2) + eigen_vectors_1(2)], [X_centroid(3), X_centroid(3) + eigen_vectors_1(3)],'LineWidth', 3, 'Color', 'b');
plot3([X_centroid(1), X_centroid(1) + eigen_vectors_2(1)], [X_centroid(2), X_centroid(2) + eigen_vectors_2(2)], [X_centroid(3), X_centroid(3) + eigen_vectors_2(3)],'LineWidth', 3, 'Color', 'r');
plot3([X_centroid(1), X_centroid(1) + eigen_vectors_3(1)], [X_centroid(2), X_centroid(2) + eigen_vectors_3(2)], [X_centroid(3), X_centroid(3) + eigen_vectors_3(3)],'LineWidth', 3, 'Color', 'g');
hold off
grid on
axis equal
end