% 20130511 XY511 22:15
% AbrahamX @ NWPU
% Just another file used in reviewing 
% "An Introduction to Matlab", v2.3, 
% By University of DUNDEE


% N = 10;
% h = 1/N;  % increment
% x = 0: h: 1;
% x = linspace(0, 1, 11)  Another approach.
% y = sin(3 * pi * x)

clf
N = 100;
h = 1/N;
x = 0: h: 1;
y = sin(3*pi*x);
plot(x, y)
axis([-0.5 1.5 -1.2 1.2])
grid on