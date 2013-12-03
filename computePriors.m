function [ prior_face, prior_non_face ] = computePriors( training_face, training_non_face )
%computePriors Computes prior beliefs
%   NOT TESTED - BassT (02.12.2013)

prior_face = size(training_face,1)/(size(training_face,1) + ...
    size(training_non_face,1));
prior_non_face = size(training_non_face,1)/(size(training_face,1) + ...
    size(training_non_face,1));

end

