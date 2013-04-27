% 20130427 XY511 17:17
% AbrahamX @ NWPU
% Numerical integral, using trapz & sum
clear
d = pi/8;  % Interval
t = 0: d: pi/2;  % Array with 5 sampling points
y = 0.2 + sin(t);  % function & its value
s = sum(y);  % s is the sum of all y points
s_sa = d * s;  % ares of these rectangles
s_ta = d * trapz(y);  % areas of these trapzoidal (Tixing)

% Display
disp(['Integral by SUM', blanks(3), 'Integral by TRAPZ'])
disp([s_sa, s_ta])

% Graphing by "stairs"
t2 = [t, t(end)+d];
y2 = [y, nan];
stairs(t2, y2, ':k')  % Rectangle to show (d*sum)
hold on
plot(t, y, 'r', 'LineWidth', 3)  % Trapzoidal to show (d*trapz)
h = stem(t, y, 'LineWidth', 2);  % stem to show y values
set(h(1), 'MarkerSize', 10)
axis([0, pi/2+d, 0, 1.5])  % x-coord, scale [0, 5*d]
xlabel('x')
ylabel('s(x)')
title('\fontsize{14}Comparing Two Integral Methods----SUM & TRAPZ')
hold off
shg


% Comment: FBI Warning. Command "sum" was designed to calculate
% the sum(s) of array elements. And some codes like: (d * sum(y))
% might be used to compute Integral.---->This is WRONG. Sum would
% take one more block when integrating.

% Note: when using numerical methods to do calculations, you should
% pay close attention to the "Interval"---->The smaller they are, the
% more accurate results would be.
