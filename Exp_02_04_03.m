% 20130422 XY511 17:30
% AbrahamX @ NWPU
% Life is a bitch. 
% dsolve used in boundary value problem
% Use breakpoints to help DEBUG. Great practice
clear all  % Comment this if matters
y = dsolve('x*D2y - 3*Dy = x^2', 'y(1) = 0', 'y(5) = 0', 'x')

% Ezplot the solutions
xn = -1: 6;
yn = subs(y, 'x', xn)
ezplot(y, [-1, 6])
hold on

% Have to admit the fate of being a programmer.
% So from good, to great. Be a great engineer.
plot([1,5], [0,0], '.r', 'MarkerSize', 20)
text(1, 1, 'y(1) = 0')
text(4, 1, 'y(5) = 0')
title(['x*D2y - 3*Dy = x^2', ', y(1)=0 y(5)=0'])
hold off

% When doing sym calc, you can do with so few codes,
% but the calc process if far too slow. Especially when
% your data is BIG. Big data and its big problem. 
