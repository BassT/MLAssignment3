load('train.mat');

[~,~,latent,~,explained] = pca(trainx);
figure('name', 'eigenvalues');
plot(latent);