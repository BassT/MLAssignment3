load('train.mat');
[training_face, training_none_face] = splitTraining(trainx, traint);
training_means = computeMeans(training_face, training_none_face);
training_vars = computeSampleVar(training_face, training_none_face, training_means);
training_snrs = computeSNRs(training_means, training_vars);
sorted_snrs = sortSNRsToMatrix(training_snrs);
pcolor(sorted_snrs);figure(gcf);