% 20130418 XY511 23:08
% AbrahamX @ NWPU

% Find the sum of series! 
% These lessons are for you to review your 
% ***Advanced Mathematics and Linear Algebra***
% From this code, I will add "clear all" and clc
% to make it more likely to get the "right" result
clear all
clc
syms n x k  % Original author forgot to add 'x'
f1 = 1/(k * (k+1))  % Here is a common self-adding function
s1 = symsum(f1, k, 1, n)  % The 1st time a little bit slow.

f2 = (x^(2*k - 1))/(2*k - 1)
s2 = symsum(f2, k, 1, inf)

f3 = [1/(2*k - 1)^2, (-1)^k/k]
s3 = symsum(f3, k, 1, inf)

