% 20130427 XY511 15:55
% AbrahamX @ NWPU
% Numerically computing derivertive function
% Figure out how the increment influences computation & results.

% Increment is TOO SMALL
d = pi/100;
t = 0: d: 2*pi;
x = sin(t);
dt = 5 * eps  % See how SMALL it is, through the window.
x_eps = sin(t+dt);
dxdt_eps = (x_eps-x)/dt;  % dt=5*eps, so...
figure(1)  % Several plots in this program, so...
plot(t, x, 'LineWidth', 5)
hold on
plot(t, dxdt_eps)
hold off
legend('x(t)', 'dx/dt')
xlabel('x')
title('Graph with Glitch Due to A Tiny Increment')

% Increment is Appropriate
x_d = sin(t+d);
dxdt_d = (x_d-x)/d;
figure(2)  % A new figure
plot(t, x, 'LineWidth', 5)
hold on
plot(t, dxdt_d)
hold off
legend('x(t)', 'dx/dt')
xlabel('t')
title('Smooth Graph Due to An Appropriate Increment')

% Comment: Let ue reveal WHY figure(1) was SO BAD!
% -------
% The accuracy is still LIMITED in numerical computing.
% When the increment of independent variable, say, dt is 
% too SMALL, then----> f(t+dt) - f(t) ~= eps. These two 
% are very CLOSE! 
% So...(f(t+dt) - f(t)) / dt would result a bad accuracy.
% Let's try df = 0.0000005, dt = 1/(5*df). Then df/dt = 5
% Holy Shit.

