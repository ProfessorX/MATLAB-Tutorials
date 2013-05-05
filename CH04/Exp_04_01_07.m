% 20130501 XY511 21:55
% AbrahamX @ NWPU
% Keeping moving, You ugly & cheap labour.
% Introducing two commands, fminbnd & fminsearch.

% Symbolic Approach
syms x 
y = sin(x)^2 * exp(-0.1*x) - 0.5*(x+0.1)*sin(x);  % Definition
yd = diff(y, x);  % differential
xs0 = solve(yd, x)
yd_xs0 = vpa(subs(yd, x, xs0), 6)  % Verification, for yd
y_xs0 = vpa(subs(y, x, xs0), 6)  % Verification, for y

% Fminfind Approach
x1 = -10;
x2 = 10;  % Local area, not global. Why, ask Google.
% Google Anomynous Function & MALAB to find more, please
yx = @(x)(exp(-0.1*x)*sin(x)^2 - 0.5*(x+0.1)*sin(x));
% xn0 is the point where yx has extreme min value.
% as with extreme max value, remember the word--converse.
[xn0,fval,exitflag,output] = fminbnd(yx, x1, x2)

% Plotting Approach
xx = -10: pi/200: 10;  % Sampling
yxx = subs(y, x, xx);
plot(xx, yxx)
xlabel('x')
title('Function y(x) over scale [-10, 10]')
grid on

% Reset bourdary & search
x1_new = 6;
x2_new = 10;
% Again, anonymous function.
yx = @(x)(exp(-0.1*x)*sin(x)^2 - 0.5*(x+0.1)*sin(x));
[xn0_new,fval,exitflag,output] = fminbnd(yx, x1_new, x2_new)

% Comment: This sample program reminds me of the good old 
% days when the math teacher repeats the concept "Monotonic".
% Alongside with exercises, Q&As and, pretty girls. Aha.
% Gone, gone forever.



% Comment: To find extreme value in a function, it's NOT
% easy at all in symbolic mode, and most of the time not
% trustworthy. With the numeric way, it could be effectively
% done. But these are limited to local areas, as with global
% area extreme value, no united method.
