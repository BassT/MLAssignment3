function [ sorted_snrs ] = sortSNRsToMatrix( training_snrs )
%sortSNRsToMatrix sorts all snrs into a 19x19 matrix
%   TESTED - BassT (28.11.2013)

sorted_snrs = reshape(fliplr(training_snrs(1,:)),19,19);

end

