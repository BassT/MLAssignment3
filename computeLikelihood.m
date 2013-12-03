function [ likelihood ] = computeLikelihood( x, covariance, means, prior )
%computeLikelihood Compute the likelihood using the logarithmic
%discriminnant function
%   Assumes x being a row vector
%   NOT TESTED - BassT (02.12.2013)

likelihood = -1/2 * (x - means')' * inv(covariance) * (x - means') + ...
    log(prior) + (-361/2 * log(2*pi) - 1/2 * log(det(covariance)));

end

