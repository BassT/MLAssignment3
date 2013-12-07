load('train.mat');

[~,~,latent,~,explained] = pca(trainx);
figure('name', 'eigenvalues');
plot(latent); title('eigenvalues of the covariance matrix'); xlabel('training images'); ylabel('magnitude');