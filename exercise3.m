load('train.mat');

coeff = pca(trainx, 'NumComponents', 5);
for i = 1:5
    figure('name', strcat(num2str(i), 'th principal component'));
    pcolor(reshape(coeff(:,i),19,19));
end