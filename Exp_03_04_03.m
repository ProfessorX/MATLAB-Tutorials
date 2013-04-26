% 20130426 XY511 21:30
% AbrahamX @ NWPU
% Empty Array.

% Construct empty arrays
a = []
b = ones(2,0)
c = zeros(2,0)
d = eye(2,0)
f = rand(2, 3, 0, 4)

% Properity of Empty Array
class(a)  % show class
isnumeric(a)  % it IS numeric!
isempty(a)  % ONLY command you can trust

which a
ndims(a)  % Guess what's the result
size(a)

% Usage: 
% Empty array is mostly used to delete sub-matrix,
% and in this way to manually adjust the SIZE of an array
% See just another example
A = reshape(-4:5, 2, 5)
A(:,[2,4]) = []  % delete #2 & #4 column



% Comment:
% ----Empty array is NOT array with all zeros
% ----Empty array is NOT nihil; It does exist
% ----The ONLY command you can trust, "isempty()"
% ----Empty array does not have the "transtive" properity.
