% 20130426 XY511 20:30
% AbrahamX @ NWPU

a = 1:8
A = reshape(a, 4, 2)
A = reshape(a, 2, 4)

b = diag(A)  % Result would be a 2 by 1 matrix
B = diag(b)  % Construct a diag matrix

D1 = repmat(B, 2, 4)  % Generate a 4 by 8 matrix
D1([1,3], :) = []  % Empty? A way to delete row/column

% Comment: some common functions, operating matrices
% diag, repmat, reshape, flipud, fliplr, rot90
% Consult "HELP" for how to use them.