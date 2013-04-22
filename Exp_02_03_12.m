% 20130422 XY511 10:45
% AbrahamX @ NWPU
% Code for Archimedes curve

% Curve length function
clear all
syms a r theta phi
disp('Life is a bitch. Why not fuck it?')
r = a * theta  % definition of the Spiral
x = r * cos(theta);  % poloar coordinates for x
y = r * sin(theta);
dLdth = sqrt(diff(x, theta)^2 + diff(y, theta)^2);
% The book does not provide message_ID
warning off  % set off the warning
L = simple(int(dLdth, theta, 0, phi))  % Here is a "phi"

% Have to say the sym calc is too slow
L_2pi = subs(L, [a, phi], sym('[1, 2*pi]'))  % sym to num
L_2pi_vpa = vpa(L_2pi)

L1 = subs(L, a, sym('1'));  
ezplot(L1*cos(phi), L1*sin(phi), [0, 2*pi])  % ezplot for sym func
grid on
hold on
x1 = subs(x, a, sym('1'));
y1 = subs(y, a, sym('1'));
h1 = ezplot(x1, y1, [0, 2*pi]);  % omit h1 and you'll not get a handle
set(h1, 'Color', 'r', 'LineWidth', 5)
title(' ')  % Clear the title by ezplot...
legend('Length of Spiral--Amplitude & Angle', 'Archimedes Spiral')
hold off


