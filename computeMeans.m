function [ training_means ] = computeMeans( training, target )
%computeMeans computes means distinguishing betweens 2 classes
%   NOT WORKING - BassT (27.11.2013)

[training_face, training_none_face] = splitTraining(training, target);

training_means = zeros(2,361);

for i = 1:size(training_face, 2)
    training_means(1, i) = mean(training_face(:, i));
end

for i = 1:size(training_none_face, 2)
    training_means(2, i) = mean(training_none_face(:,i));
end

end
