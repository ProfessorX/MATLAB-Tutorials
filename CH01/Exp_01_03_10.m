% Plot Damped Oscillation Curve
% Function: exp(-t/3) .* sin(3 * t)

t = 0: pi/100: 4*pi;  % Value scale of variable t
% Well, the '.*' and '*' are TOTALLY different
y = exp(-t/3) .* sin (3 * t);  % Calc y value

% Plot
plot(t, y, '-r', 'LineWidth', 2)
axis([0, 4*pi, -1, 1])
xlabel('t')
ylabel('y')
