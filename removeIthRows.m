function [ trainingForCV, targetForCV ] = removeRows100FoldCV( i, training, target )
%removeIthRow Removes the ith row from the training and target data
%   NOT TESTED - BassT (02.12.2013)

if i == 1
    trainingForCV = training(100:end,:);
    targetForCV = target(100:end,:);
elseif i == size(training, 1)
    trainingForCV = training(1:i-1,:);
    targetForCV = target(1:i-1,:);
else
    trainingForCV = training([1:(i-1),(i+1):end],:);
    targetForCV = target([1:(i-1),(i+1):end],:);
end


end

