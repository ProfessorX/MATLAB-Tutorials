% 20130502 XY511 9:50
% AbrahamX @ NWPU
% Ordinary Differential Equations & Numerical Solutions
% Here we define a function to be used in Exp_04_01_09.m
function ydot = DyDt(t, y)  % t could be replace by "~"
mu = 2;
% ydot is a column array
ydot = [y(2); mu*(1-y(1)^2)*y(2)-y(1)];
