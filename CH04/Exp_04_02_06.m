% 20130502 XY511 14:50
% AbrahamX @ NWPU
% Sample on solving Linear Equations
A = reshape(1:12, 4, 3);  % coefficient
b = (13: 16)';  % column vector

% Check if b is in A's value space
ra = rank(A)
rab = rank([A, b])  % Expected: rand([A,b]) = rank(A)

% Figure out Particular & General solution
xs = A\b;  % particular
xg = null(A);  % general
c = rand(1);  % used in whole solution
ba = A * (xs + c*xg)
Norm_ba = norm(ba-b)  % how close they are



% Comment: It's highly recommended that you take left and/or
% right slash to solve linear equations. The Cramer method, 
% inverse matrix method (x = A^-1 *b) and things like Gaussian
% Elimination method are NOT AS efficient AS l/r slash. Trust me.