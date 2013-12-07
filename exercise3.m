load('train.mat');

coeff = pca(trainx, 'NumComponents', 5);
for i = 1:5
    figure('name', strcat(num2str(i), 'th principal component'));
    pcolor(reshape(coeff(:,i),19,19));axis([1 19 1 19]); title([num2str(i),'th principal component']); xlabel('pixels'); ylabel('pixels');
end