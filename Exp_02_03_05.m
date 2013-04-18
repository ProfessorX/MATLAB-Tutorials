% 20130418 XY511 22:15
% AbrahamX @ NWPU
clear all
syms x

% Do the diff to hidden functions
g = sym('cos(x + sin(y(x))) = sin(y(x))')
dgdx = diff(g, x)

% Replace 'dgdx' with 'dydx'
dgdx1 = subs(dgdx, 'diff(y(x), x)', 'dydx')

% Solve the function to represent dydx by 'x' & 'y'
dydx = solve(dgdx1, 'dydx')
