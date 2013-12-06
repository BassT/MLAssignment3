function [ y ] = computeYs( w, phi )
%computeYs Computes the predictions 
%   NOT TESTED - BassT (02.12.2013)

y = zeros(size(phi,1), 1);

for i = 1:size(phi,1)
    a = w' * phi(i,:)';
    y(i) = 1/(1+exp(-a));
end

end