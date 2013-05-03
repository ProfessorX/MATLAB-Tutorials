% 20130503 XY511 12:10
% AbrahamX @ NWPU
% Polynomial Fitting (Well, ideas and solutions from---->
% Least Squares)

% Given x0 & y0, polyfit a 3-order function
x0 = 0: 0.1: 1;
y0 = [-0.447,1.978,3.11,5.25,5.02,4.66,4.01,4.58,3.45,5.35,9.22];

% Ployfit (Ask Help for more info)
n = 3;  % Order
P = polyfit(x0, y0, 3)  % Got its coefficient
PExp = poly2str(P, 'x')  % Got the function

% Plotting to make it more clearly. Picture ? Words
xx = 0: 0.001: 1;
yy = polyval(P, xx);
plot(xx, yy, '-b', x0, y0, '.r', 'MarkerSize', 20)
legend('Polyfit Curve', 'Original Data', 'Location', ...
  'SouthEast')
xlabel('x')
title('Polyfit from Ten Pairs of (x,y)')


% Comment: The PExp is trustworthy if and only if used within the
% scale of 0<= x <=1. For there is no more data. That's what we call
% REASONING.