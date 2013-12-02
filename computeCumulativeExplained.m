function [ output ] = computeCumulativeExplained( input )
%computeCumulativeExplained converts explained variances for each component
%to a cumulative vecotr
%   NOT TESTED - BassT (29.11.2013)

output = input;

for i = 2:size(input)
    output(i) = output(i) + output(i-1);
end

end

