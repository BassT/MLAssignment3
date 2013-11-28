function [ training_vars ] = computeSampleVar( training_face, training_none_face, training_means )
%computeSampleVar Computes the variance for each pixel
%   TESTED - BassT (28.11.2013)

training_vars = zeros(1,size(training_means,2));

for col = 1:size(training_means,2)
    
    summand1 = 0;
    summand2 = 0;
    
    for row = 1:size(training_face, 1)
        
        summand1 = summand1 + (training_face(row,col)-training_means(1,col))^2;
        summand2 = summand2 + (training_face(row,col)-training_means(2,col))^2;

    end
    
    training_vars(1,col) = (summand1 + summand2)/(size(training_face,1) + ...
        size(training_none_face,1) - 2);
    
end
end

