% 20130505 XY511 18:18
% AbrahamX @ NWPU
% Just a simple example on Subplot.

clf;
% Initialization
t = 0: pi/1000: pi;
y1 = sin(t);
y2 = sin(10 * t);
y12 = sin(t) .* sin(10*t);  % Or it could be y12 = y1 .* y2. HeHe

% Plot
subplot(221)
plot(t, y1)
axis([0, pi, -1, 1])
subplot(222)
plot(t, y2)
axis([0, pi, -1, 1])

subplot('Position', [0.2, 0.1, 0.6, 0.40])
plot(t, y12, 'b-', t, y1, 'r:', t, -y1, 'r:')
axis([0, pi, -1, 1])
