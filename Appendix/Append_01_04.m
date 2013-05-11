% 20130510 XY511 12:21
% AbrahamX @ NWPU
% A more practical example on num2str.
clear;
% Initialization
a = 2;  % Decay coefficient
w = 3;  % Oscillation Frequency
t= 0: 0.01: 10;  % Sampling points
y = exp(-a*t) .* sin(w*t);  % Figure out difference between .* & *

% Process
[y_max, i_max] = max(y);  % Buddy, we could have RETURN value.
t_text = ['t=', num2str(t(i_max))];  % X-coordinate
y_text = ['y=', num2str(y_max)];  % Y-coordinate
max_text = char('maximun', t_text, y_text);  % Max point
% This way makes it more flexible
tit = ['y=exp(-', num2str(a), 't) * sin(', num2str(w), 't)'];

% Plot
plot(t, zeros(size(t)), 'k')  % Baseline
hold on
plot(t, y, 'b')
plot(t(i_max), y_max, 'r.', 'MarkerSize', 20)  % Max point
text(t(i_max) + 0.3, y_max + 0.05, max_text)  % Augements, Parameters.
title(tit)
xlabel('t')
ylabel('y')
hold off










% Comment: This program gives you a classic example of num2str used
% in plotting dynamic figures.
