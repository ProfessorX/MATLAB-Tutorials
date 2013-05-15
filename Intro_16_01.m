% 20130515 XY511 20:03
% AbrahamX @ NWPU
% For codes in 16.12, Sparse Matrices

i = [1, 3, 5];  % i-index
j = [2, 3, 4];  % j-index
v = [10, 11, 12];  % Corresponding values
S = sparse(i, j, v)

T = full(S)

% -------
% Just an extension
% -------
n = 5;
l = -(2: n+1)';
d = (1: n)';
u = ((n+1): -1: 2)';
B = spdiags([l' d' u'], -1:1, n, n);
full(B)









% Comment: Row and Column vectors are special cases of matrices.