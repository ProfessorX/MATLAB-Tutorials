% 20130426 XY511 16:25
% AbrahamX @ NWPU
% Comparison: Tranditional & Vectorizing Programming
% Function: z = sin(abs(x*y))

% Tranditional Approach
clear 
x = -5: 0.1: 5;  % x-coordinate
y = (-2.5: 0.1: 2.5)'  % y-coordinate
N = length(x);  % total num of x
M = length(y);  % total num of y
for ii = 1: M
  for jj = 1: N
    X0(ii, jj) = x(jj);
    Y0(ii, jj) = y(ii);
    Z0(ii, jj) = sin(abs(x(jj)*y(ii)));  % Calc z by brute force
  end
end

% Vectorzing Approach
[X, Y] = meshgrid(x, y);
Z = sin(abs(X .* Y));  % Just ONE line of command!

% Comparing. Will they be the same?
norm(Z-Z0)

% Plot. Graphing formulas is one of MATLAB's strengths...
surf(X, Y, Z)
xlabel('x')
ylabel('y')
shading interp
view([190, 70])  % Position viewing the plot.

% Comment: You will find loop is so RARELY used in MATLAB.
% For once you treat data in a MATrix format, they are so
% BEAUTIFUL. Math is beautiful, life is full of opportunities.
% Ph.D., for research, for true love. (Fuck you.)
