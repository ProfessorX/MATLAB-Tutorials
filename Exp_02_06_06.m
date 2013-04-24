% 20130424 XY511 10:10
% AbrahamX @ NWPU
% When there is no sym result, the numerical result would
% be given.
clear all
syms x;
s = solve('(x+2)^x = 2', 'x')
xs = (s+2)^s  % one more step to verify the result, could be omitted.
% You could add some commands like "vpa" here to do more
% accurate computation.
