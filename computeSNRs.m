function [ training_snrs ] = computeSNRs( training_means, training_vars )
%computeSNRs Computes the signal to noise ratio for each pixel
%   TESTED - BassT (28.11.2013)

means_diff = training_means(1,:) - training_means(2,:);

training_snrs = means_diff ./ sqrt(training_vars);

end

