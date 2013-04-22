% 20130418 XY511 23:20
% AbrahamX @ NWPU
clear all
clc
syms x
f1 = x * log(x)
s1 = int(f1, x)
s1 = simple(s1)  % Simplify the result.