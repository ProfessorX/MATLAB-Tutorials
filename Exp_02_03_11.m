% 20130422 XY511 10:32
% AbrahamX @ NWPU
% A long time before coding...
% So it's high time to continue doing this.
% No coding, no pleasure. Life is a bitch.
clear all
clc
syms x positive
syms y z
% F2 = int(int(int(x^2 + y^2 + z^2, z, sqrt(x*y), x^2 * y), y, sqrt(x), x^2),
% x, 1, 2)

F2 = int(int(int(x^2 + y^2 + z^2, z, sqrt(x*y), x^2 * y), y, sqrt(x),...
x^2), x, 1, 2)
% I am a programmer, and I broadcast for Mechanic and
% Capacitance Keyboard.
VF2 = vpa(F2)  % Show the result in 32bit form. 