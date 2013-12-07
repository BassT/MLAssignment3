tic;
load('train.mat');

class = zeros(size(traint,1),1);
error = 0;

[ training_face, training_non_face ] = splitTraining(trainx, traint);

% compute 75 first principal components
coeff_face = pca(training_face, 'NumComponents', 75);
coeff_non_face = pca(training_non_face, 'NumComponents', 75);

for i = 1:size(trainx, 1) % loop through each training sample - cross-validation
    
    [ trainxForCV, traintForCV ] = removeIthRow(i, trainx, traint);
    [ training_face, training_non_face ] = splitTraining(trainxForCV, ...
        traintForCV);
    
    % project training data onto pc-hyperplane
    hyper_face = training_face * coeff_face;
    hyper_non_face = training_non_face * coeff_non_face;
    
    means = computeMeans(hyper_face, hyper_non_face);
    [ covar_face, covar_non_face ] = generateCovarianceMatrices(hyper_face, hyper_non_face);
    [ prior_face, prior_non_face ] = computePriors(hyper_face, hyper_non_face);
    
    class(i) = bayesianClassifyEx11(trainx(i,:)', prior_face, prior_non_face, ...
        covar_face, covar_non_face, means, coeff_face, coeff_non_face);
    
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
