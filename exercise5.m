load('train.mat');
[ training_face, training_non_face ] = splitTraining(trainx, traint);

[~,~,~,~,explained] = pca(training_face);
explained_cum = computeCumulativeExplained(explained);
figure('name', 'proportion of explained variance face dataset');
plot(explained_cum);

[~,~,~,~,explained] = pca(training_non_face);
explained_cum = computeCumulativeExplained(explained);
figure('name', 'proportion of explained variance non-face dataset');
plot(explained_cum);