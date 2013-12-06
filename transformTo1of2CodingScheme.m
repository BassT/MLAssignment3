function [ output ] = transformTo1of2CodingScheme( input )
%transformTo1of2CodingScheme Transforms the target vector to a 1-of-2
%coding scheme matrix.
%   NOT TESTED - BassT (02.12.2013)

output = zeros(size(input,1),2);

for i = 1:size(input,1)
    if(input(i) == 1)
        output(i,1) = 1;
    elseif (input(i) == -1)
        output(i,2) = 1;
    else
        disp('transformTo1of2CodingScheme - Error couldn''t determine class');
    end
end

end

