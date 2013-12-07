function [ class ] = bayesianClassifyEx11( x, prior_face, prior_non_face, covar_face, covar_non_face, means, coeff_face, coeff_non_face )
%bayesianClassify Outputs 1 if face, outputs -1 if non-face
%   NOT TESTED - BassT (2.12.2013)

likelihood_face = computeLikelihoodEx11(x, covar_face, means(1,:), prior_face, coeff_face);
likelihood_non_face = computeLikelihoodEx11(x, covar_non_face, means(2,:), prior_non_face, coeff_non_face);

if likelihood_face > likelihood_non_face 
    class = 1;
elseif likelihood_face < likelihood_non_face
    class = -1;
else
    class = 0;
end

end

