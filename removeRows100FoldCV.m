function [ trainingForCV, targetForCV, trainingRemoved, testRemoved ] = removeRows100FoldCV( i, training, target )
%removeIthRow Removes the ith row from the training and target data
%   NOT TESTED - BassT (02.12.2013)

if i == 1
    trainingForCV = training(100:end,:);
    trainingRemoved = training(1:99,:);
    targetForCV = target(100:end,:);
    testRemoved = target(1:99,:);
elseif i == 34
    trainingForCV = training(1:3399,:);
    trainingRemoved = training(3400:end,:);
    targetForCV = target(1:3399,:);
    testRemoved = target(3400:end,:);
else
    trainingForCV = training([1:(i*100-1),((i+1)*100):end],:);
    trainingRemoved = training((i*100):(i+1)*100-1,:);
    targetForCV = target([1:(i*100-1),((i+1)*100):end],:);
    testRemoved = target((i*100):(i+1)*100-1,:);
end


end

