% 20130502 XY511 12:00
% AbrahamX @ NWPU
% Command "null" in matrix
A = reshape(1:15, 5, 3);  % A 5-by-3 matrix
X = null(A)  % null space
S = A * X  % "null" or not

n = size(A, 2)  % row=1, column=2; ans should be 3 (for matrix)
l = size(X, 2)  % dim of null space

% Verifying: rank(A) should equal to n-l
n-l == rank(A)



% Comment: Suppose X(n*l) is the null space of matrix A(m*n),
% namely A(m*n)*X(n*l) = zeros(m*l).
% Then there is a property rank(A) = n-l.