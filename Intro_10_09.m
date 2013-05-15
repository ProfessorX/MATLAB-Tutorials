% 20130514 XY511 21:55
% AbrahamX @ NWPU
% Just another example on Formatted text on Plots
set(0, 'Defaultaxesfontsize', 16);
n = 1: 100;
x = (1+ 1./n) .^n;  % Definition, in MATLAB as simple as this

% Plot
subplot(211)
plot(n, x, '.', [0, max(n)], exp(1)*[1, 1], ...
  '--', 'MarkerSize', 8)
title('x_n = (1+1/n)^n', 'FontSize', 12)
xlabel('n')
ylabel('x_n')
legend('x_n', 'y = e^1 = 2.71828...', 4)

% Another plot in the same figure
subplot(212)
x = -2: 0.02: 2;
y = (x.^3) .* (sin(3*pi*x) .^ 2);
plot(x, y, 'LineWidth', 2)
legend('y = x^3sin^2 3\pi x', 4)
xlabel('x')

