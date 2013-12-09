load('train.mat');
[ training_face, ~] = splitTraining(trainx, traint);
coeff = pca(training_face, 'NumComponents', 10);
img = randi(size(training_face,1),1);

% 1st principal component
approx = coeff(:,1) .* training_face(img,:)';
figure('name', 'approximation using first principal component');
pcolor(reshape(flipud(approx),19,19));
colormap gray;
title('first principal component'); xlabel('x pixel'); ylabel('y pixel');

% first 2 principal components
approx = (coeff(:,1) + coeff(:,2)) .* training_face(img,:)';
figure('name', 'approximation using first two principal component');
pcolor(reshape(flipud(approx),19,19));
colormap gray;
title('first two principal components'); xlabel('x pixel'); ylabel('y pixel');

% first 5 principal compnents
approx = (coeff(:,1) + coeff(:,2) + coeff(:,3) + coeff(:,4) + ...
    coeff(:,5)) .* training_face(img,:)';
figure('name', 'approximation using first 5 principal component');
pcolor(reshape(flipud(approx),19,19));
colormap gray;
title('first 5 principal components'); xlabel('x pixel'); ylabel('y pixel');

% first 10 principal compnents
approx = sum(coeff,2) .* training_face(img,:)';
figure('name', 'approximation using first 10 principal component');
pcolor(reshape(flipud(approx),19,19));
colormap gray;
title('first 10 principal components'); xlabel('x pixel'); ylabel('y pixel');