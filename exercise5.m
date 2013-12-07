load('train.mat');
[ training_face, training_non_face ] = splitTraining(trainx, traint);

[~,~,~,~,explained] = pca(training_face);
explained_cum = computeCumulativeExplained(explained);
figure('name', 'proportion of explained variance face dataset');
plot(explained_cum); title('ariance explained as a function of the number of principal components used'); xlabel('principal components'); ylabel('variance');

[~,~,~,~,explained] = pca(training_non_face);
explained_cum2 = computeCumulativeExplained(explained);
figure('name', 'proportion of explained variance non-face dataset');
plot(explained_cum2); title('ariance explained as a function of the number of principal components used'); xlabel('principal components'); ylabel('variance');