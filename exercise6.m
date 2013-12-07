load('train.mat');
[ training_face, ~] = splitTraining(trainx, traint);
coeff = pca(training_face, 'NumComponents', 10);
img = randi(size(training_face,1),1);

% 1st principal component
approx = coeff(:,1) .* training_face(img,:)';
figure('name', 'approximation using first principal component');
pcolor(reshape(approx,19,19));
colorbar();title('approximation based upon the first principal component'); xlabel('pixel'); ylabel('pixel');

% first 2 principal components
approx = (coeff(:,1) + coeff(:,2)) .* training_face(img,:)';
figure('name', 'approximation using first two principal component');
pcolor(reshape(approx,19,19));
colorbar();title('approximation based upon the second principal component'); xlabel('pixel'); ylabel('pixel');

% first 5 principal compnents
approx = (coeff(:,1) + coeff(:,2) + coeff(:,3) + coeff(:,4) + ...
    coeff(:,5)) .* training_face(img,:)';
figure('name', 'approximation using first 5 principal component');
pcolor(reshape(approx,19,19));
colorbar();title('approximation based upon the third principal component'); xlabel('pixel'); ylabel('pixel');

% first 10 principal compnents
approx = sum(coeff,2) .* training_face(img,:)';
figure('name', 'approximation using first 10 principal component');
pcolor(reshape(approx,19,19));
colorbar();title('approximation based upon the fourtht principal component'); xlabel('pixel'); ylabel('pixel');