function [ vector ] = sortToVector( matrix )
%sortToVector Sorts all values of a quadratic matrix in a descending order
%   TESTED - BassT (29.11.2013)

dim = size(matrix, 1);

vector = zeros(dim*dim,1);

for i = 1:dim
    vector((i-1)*dim+1:i*dim,1) = matrix(:,i);
end

vector = sort(vector, 'descend');

end

