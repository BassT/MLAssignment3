function [ result ] = onlyMarginalChangesInW( w_new, w_old )
%onlyMarginalChangesInW Summary of this function goes here
%   Detailed explanation goes here

result = true;
for i = 1:size(w_new)
    if (w_new(i) / w_old(i) > 0.01)
        result = false;
        break;
    end
end

end

