% 20130417 XY511 22:30
% AbrahamX @ NWPU
syms a b t u v x y
% Following is a derivative sym matrix
A = [a + b*x, sin(t) + u; x * exp(-t), log(y) + v]
symvar(A, 1)



