% 20130502 XY511 9:50
% AbrahamX @ NWPU
% Ordinary Differential Equations & Numerical Solutions
tspan = [0, 30];  % Time span for the solutions
y0 = [1; 0];  % y should have the same form as in DyDt.m
[tt, yy] = ode45(@DyDt, tspan, y0);

% Plot
figure(1)
plot(tt, yy(:, 1))
xlabel('t')
title('x(t)')

figure(2)
plot(yy(:,1), yy(:,2))  % y & its differential
xlabel('Distance')
ylabel('Velocity')