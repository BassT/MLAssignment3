function [ likelihood ] = computeLikelihoodEx11( x, covariance, means, prior, coeff )
%computeLikelihood Compute the likelihood using the logarithmic
%discriminnant function
%   Assumes x being a row vector
%   NOT TESTED - BassT (02.12.2013)

hyper = (x' * coeff)';

likelihood = -1/2 * (hyper - means')' * inv(covariance) * (hyper - means') + ...
    log(prior) + (-361/2 * log(2*pi) - 1/2 * log(det(covariance)));

end
