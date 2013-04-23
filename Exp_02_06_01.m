% 20130423 XY511 10:45
% AbrahamX @ NWPU
% Analysis of basic matrix & linear equations
syms a11 a12 a21 a22
A = [a11, a12; a21, a22]
DA = det(A)
IA = inv(A)

EA = subexpr(eig(A), 'D')