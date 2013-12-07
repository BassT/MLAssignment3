tic;
load('train.mat');
class = zeros(size(traint,1),1);
error = 0;
w_new = zeros(361,1);

for i = 1:35 % 100-fold cross-validation
    
    [ phi, t, ~, ~ ] = removeRows100FoldCV(i, trainx, traint);
    t( t == -1 ) = 0;
    while(true)
        
        w_old = w_new;
        y = computeYs(w_old, phi);
        R = generateR(y);
        w_new = w_old - inv(phi' * R * phi) * phi' * (y - t);
        
        if onlyMarginalChangesInW(w_new, w_old) == true
            break;
        end
        
    end
    
    for j = (i*100):((i+1)*100-1)
        if j < size(trainx,1)
            y = w_new' * trainx(j,:)';
            if (y > 0.5)
                class(j) = 1;
            else
                class(j) = -1;
            end
        end
        
        if(class(j) ~= traint(j))
            error = error + 1;
        end
    end
    
    disp(strcat('i:', num2str(i)));
    toc;
    
end

error_rate = error / i * 100;
disp(strcat('error rate: ', num2str(error_rate), '%'));