% 20130417 XY511 22:30
% AbrahamX @ NWPU
syms a b x X Y  % Definition of symbolic variables
k = sym('3')  % Definition of symbolic constant
z = sym('c * sqrt(d) + y * sin(t)');  % Primary sym expression
EXPR = a * z * X + (b * x^2 + k) * Y;  % Derivative sym expression

symvar(EXPR)

symvar(EXPR, 10)

symvar(EXPR, 1)

symvar(EXPR, 3)

E3 = sym('a * sqrt(theta)')  % Avoid using MATLAB keywords!

E4 = sym('a * sqrt(theta123)')  % Avoided and see the result


