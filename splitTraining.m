function [ training_face, training_non_face ] = splitTraining( training_data, target_data )
%splitTraining splits a training data vector with two classes
% tested by BassT (27.11.2013)

training_face = [];
training_non_face = [];

for i = 1:size(training_data, 1)
    if target_data(i) > 0
        training_face = [training_face; training_data(i)];
    elseif target_data(i) < 0
        training_non_face = [training_non_face; training_data(i)];
    end
end

end

