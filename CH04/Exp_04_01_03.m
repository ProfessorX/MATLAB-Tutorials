% 20130427 XY511 16:25
% AbrahamX @ NWPU
% Derivative function. "diff" & "gradient" approach
clf
d = pi/100;  % Increment
t = 0: d: 2*pi;  % Independent variable
x = sin(t);

dxdt_diff = diff(x)/d;  % diff is to calc difference
dxdt_grad = gradient(x)/d;  % To get dx/dt, you should DIVIDE "d"

% Plot
subplot(121)
plot(t, x, 'b')
hold on
plot(t, dxdt_grad, 'm',  'LineWidth', 8)
% Note: diff will ignore the last point because there is
% no more point to substract X(end)
plot(t(1:end-1), dxdt_diff, '.k', 'MarkerSize', 8)
axis([0, 2*pi, -1.1, 1.1])
title('[0, 2\pi]')
legend('x(t)', 'dxdt_{grad}', 'dxdt_{diff}', 'Location',...
  'North')
xlabel('t')
box off
hold off

subplot(122)
kk = (length(t)-10): length(t);  % Magnify, more clearly. Aha
hold on
plot(t(kk), dxdt_grad(kk), 'om', 'MarkerSize', 8)
plot(t(kk-1), dxdt_diff(kk-1), '.k', 'MarkerSize', 8)
title('[end-10, end]')
legend('dxdt_{grad}', 'dxdt_{diff}', 'Location', ...
  'SouthEast')
xlabel('t')
box off


% Comment: You could also use "size()" to tell you more quickly
% different sizes between dxdt_grad & dxdt_diff. And look them
% up in workspace & variables, please.

% Comment: Should us hold fast to our dreams, or should we just
% submit to the People's Communist Party, and GuiTian till explode?
% I have chosen not to submit; I could not promise you the future.