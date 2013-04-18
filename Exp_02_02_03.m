% 20130418 XY511 15:00
% AbrahamX @ NWPU
clear all
A = sym('[a, b; c, d]')
[V, D] = eig(A) %Eigenvalues and eigenvectors

% find the subexpressions
subexpr([V; D])
who  % results are sigma and ans

Dw = subexpr(D, 'w')  % Simplify D

[RVD, w] = subexpr([V; D], 'w');