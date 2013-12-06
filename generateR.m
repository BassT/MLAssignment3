function [ R ] = generateR( y )
%generateR Generates diagonal matrix R
%   NOT TESTED - BassT (02.12.2013)

R = zeros(size(y));

for i = 1:size(R,1)
    R(i,i) = y(i) * (1 - y(i));
end

end

