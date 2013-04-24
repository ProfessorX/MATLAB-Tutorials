% 20130424 XY511 17:20
% AbrahamX @ NWPU
% Life is full of out-of-control.
% Hold on to get-to-go. I, programmer. I, hacker. Aha...
% Visualize your symbolic results---->
% A different approach is to give the results, meaningful numbers.
clear 
syms x y real
fx = 1 - 2/(1+exp(x));  % Definition of f(x)
disp('f(x) = ');
pretty(fx)
disp('  ')
fxint = simple(int(fx, x, 0, x))  % calc the integral

% Numerating the result, and plot
xk = 0: 0.1: 2;  % Sampling points
fxk = subs(fx, x, xk);  % You can show fxk to see what it is
% fxk
fxintk = subs(fxint, x, xk);
% Keep in mind "plot" does NOT accept SYM parameters
plot(xk, fxk, 'g:', xk, fxintk, 'r', 'LineWidth', 2.5)
title('f(x) & \int f(x)dx')
xlabel('x')
legend('f(x)', '\int^x_0 f(x)dx', 'Location', 'Best')

% Figure out the inverse function
gy = simple(subs(finverse(fx), x, y))  % g(y) is the inverse function
gyint = simple(int(gy, y, 0, y))  % Integrate

% Verify the properity of inverse function
gf = simplify(subs(gy, y, fx))  % Should be "x"

% A tiny game
yk = subs(fx, x, xk);  % refer to former code block
gyintk = subs(gyint, y, yk);
GYintk = xk .* fxk - fxintk;  % Another way to calc int for invfunction
plot(yk, gyintk, 'r')
hold on
plot(yk, GYintk, '+k')
hold off
xlabel('y')
legend('Calculate integral of inverse function directly', ...
  'Calculate integral of inverse function via complementary method', ...
  'Location', 'Best')

% Comment: Complementary method is great when int(f(x)) is difficult.
% One more example f(x) is given below,
% ###################################################################
% f(x) = 2 - 1/(1+exp(-x)) - 1/(1+exp(1-x))
% ###################################################################
% Try to calc int(f(x)) directly, and using the Complementary method.
% Figure out time gap, and write it into your report.

% Comment by AbrahamX, InfoSec Lab, School of Automation,
% Northwestern Polytechnic University. Xi'an, Shaanxi, P.R.China.

