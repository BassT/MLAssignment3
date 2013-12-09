function [ training_face, training_non_face ] = splitTraining( training_data, training_data_labels )
%splitTraining splits a training data vector with two classes
%   TESTED - BassT (27.11.2013)

training_face = zeros(1215,361);
training_non_face = zeros(2265,361);

training_face_index = 1;
training_non_face_index = 1;

for i = 1:size(training_data, 1)
    %Trainingdata belongs to face dataset
    if training_data_labels(i) > 0
        training_face(training_face_index,:) = training_data(i,:);
        training_face_index = training_face_index + 1;
    %Trainingdata belongs to non-face dataset
    elseif training_data_labels(i) < 0
        training_non_face(training_non_face_index,:) = training_data(i,:);
        training_non_face_index = training_non_face_index + 1;
    end
end

end

