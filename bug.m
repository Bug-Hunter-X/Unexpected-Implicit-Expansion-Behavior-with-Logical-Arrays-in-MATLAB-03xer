function result = myFunction(input)
% This function demonstrates an uncommon MATLAB bug related to implicit expansion.
  A = ones(1,3);  % Row vector
  B = 2*ones(3,1); % Column vector

  % Implicit expansion works as expected
  C = A + B; % This is correct

  % The bug arises when dealing with logical arrays
  D = logical(A > 1); % D will be a row vector of false values
  E = logical(B > 1); % E will be a column vector of true values

  F = D & E; % This is where the error arises, unexpected result
  result = F; 
end