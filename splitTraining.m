function [ training_face, training_non_face ] = splitTraining( training_data, target_data )
%splitTraining splits a training data vector with two classes
%   TESTED - BassT (27.11.2013)

training_face = zeros(1215,361);
training_non_face = zeros(2265,361);

face_index = 1;
none_face_index = 1;

for i = 1:size(training_data, 1)
    if target_data(i) > 0
        training_face(face_index,:) = training_data(i,:);
        face_index = face_index + 1;
    elseif target_data(i) < 0
        training_non_face(none_face_index,:) = training_data(i,:);
        none_face_index = none_face_index + 1;
    end
end

end

