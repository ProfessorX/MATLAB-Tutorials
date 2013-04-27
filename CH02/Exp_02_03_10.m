% 20130422 XY511 10:30
% AbrahamX @ NWPU
syms a b x
f2 = [a*x, b*(x^2); 1/x, sin(x)]  % sym matrix 
INTf2 = int(f2)  % the result is still a matrix
pretty(INTf2)