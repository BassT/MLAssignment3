addpath /Applications/MATLAB_R2012b.app/toolbox/libsvm
load('train.mat');
error = 0;
tic;

for i = 1:34 % 100-fold cross-validation
    
    [ trainingForCV, testForCV, trainingRemoved, testRemoved ] = removeRows100FoldCV(i, trainx, traint);
    
    model = svmtrain(testForCV, trainingForCV, '-t 0');
    
    [ predicted_label, accuracy, decision_values ] = svmpredict( ...
        testRemoved, trainingRemoved, model);
    
    for j = 1:size(testRemoved,1);
        if(predicted_label(j) ~= testRemoved(j))
            error = error + 1;
        end
    end
    
%     disp(strcat('i:', num2str(i)));
%     toc;
    
end

error_rate = error / 3480;
disp(strcat('error rate: ', num2str(error_rate), '%'));