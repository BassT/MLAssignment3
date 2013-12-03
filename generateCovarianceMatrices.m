function [ covar_face, covar_non_face ] = generateCovarianceMatrices( training_face, training_non_face )
%generateCovarianceMatrix Generates a diagonal covariance matrix
%   TESTED - BassT (02.12.2013)

vars_face = zeros(1,361);
vars_non_face = zeros(1,361);
covar_face = zeros(361);
covar_non_face = zeros(361);

% compute class-conditional variances for each pixel
vars_face = var(training_face);
vars_non_face = var(training_non_face);

% generate covariance matrices
for i = 1:361
    covar_face(i,i) = vars_face(i);
    covar_non_face(i,i) = vars_non_face(i);
end

end

