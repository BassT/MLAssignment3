load('train.mat');
[ training_face, training_none_face ] = splitTraining(trainx, traint);
figure('name','Face dataset');scatter(training_face(:,1),training_face(:,2));
figure('name','None face dataset');scatter(training_none_face(:,1),training_none_face(:,2));