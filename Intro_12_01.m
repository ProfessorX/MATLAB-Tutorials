% 20130514 XY511 22:22
% AbrahamX @ NWPU
t = [1: 1: 500]/500/20;  % Sampling time
f = 100;  % Frequency
y1 = sin(2 * pi * f * t);
y2 = sin(2 * pi * f * t + pi/4) 

% Plot
plot(t, y1, '-', t, y2, '--')
axis([0, 0.05, -1.5, 1.5])
grid on
