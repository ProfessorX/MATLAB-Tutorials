% 20130504 XY511 23:10
% AbrahamX @ NWPU
% Modulation curve & its envelope

t = (0: pi/100: pi)';  % Sampling points
y1 = sin(t) * [-1, 1];  % Envelope
y2 = sin(t) .* sin(9*t);  % Modulation
t3 = pi * (0:9)/9;  % Smapling points, for y3
y3 = sin(t3) .* sin(9*t3);

% Plot
plot(t, y1, 'r:', t, y2, '-bo')
hold on
plot(t3, y3, 's', 'MarkerSize', 10, 'MarkerEdgeColor', [0,1,0], ...
  'MarkerFaceColor', [1,0.8,0])
axis([0, pi, -1, 1])  % My name is Axis. Not N'xis
title('\fontsize{14}Modulation Curve and Its Envelope, sin(t)*sin(9t)')
hold off

% A more compressed command would be like this:
% plot(t, y1, 'r:', t, y2, '-bo', t3, y3, 's', 'MarkerSize', 10, ...
%   'MarkerEdgeColor', [0,1,0], 'MarkerFaceColor', [1,0.8,0])


% Comment: Life is a bitch. Why not fuck it till explode.
% I am leading a life the same as what I will face, say in few months.
% Please just call me, Software Engineer.
% So glad to have bought a nice keyboard, or I would die from Sucker.