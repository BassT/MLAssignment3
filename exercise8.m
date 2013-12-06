tic;
load('train.mat');

class = zeros(size(traint,1),1);
error = 0;

for i = 1:size(trainx, 1) % loop through each training sample - cross-validation
    
    [ trainxForCV, traintForCV ] = removeIthRow(i, trainx, traint);
    X_tilde = [ones(size(trainxForCV,1),1) trainxForCV];
    T = transformTo1of2CodingScheme(traintForCV);
    W_tilde = X_tilde' * T;
    y = W_tilde' * [1 trainx(i,:)]';
    if (y(1) > y(2))
        class(i) = 1;
    else
        class(i) = -1;
    end
    
    if(class(i) ~= traint(i))
        error = error + 1;
    end
    
    if (mod(i,100) == 0)
        disp(strcat('i: ', num2str(i)));
        toc;
    end
    
end

error_rate = error / i * 100;
disp(strcat('error rate: ', num2str(error_rate), '%'));