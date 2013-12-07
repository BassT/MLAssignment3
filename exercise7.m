tic;
load('train.mat');

class = zeros(size(traint,1),1);
error = 0;

for i = 1:size(trainx, 1) % loop through each training sample - cross-validation
    
    [ trainxForCV, traintForCV ] = removeIthRow(i, trainx, traint);
    [ training_face, training_non_face ] = splitTraining(trainxForCV, ...
        traintForCV);
    means = computeMeans(training_face, training_non_face);
    [ covar_face, covar_non_face ] = generateCovarianceMatrices(training_face, training_non_face);
    [ prior_face, prior_non_face ] = computePriors(training_face, training_non_face);
    
    class(i) = bayesianClassify(trainx(i,:)', prior_face, prior_non_face, covar_face, covar_non_face, means);
    
    if(class(i) ~= traint(i))
        error = error + 1;
    end
    
%     if (mod(i,100) == 0)
%         disp(strcat('i: ', num2str(i)));
%         toc;
%     end
    
end

error_rate = error / i * 100;
disp(strcat('error rate: ', num2str(error_rate), '%'));
