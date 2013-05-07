% 20130505 XY511 17:35
% AbrahamX @ NWPU
% Just another example on Hold on, Hold off

% t = 2* pi * (0: 20)/20
t1 = 0: pi/10: 2*pi;  % I prefer this, so...
y = cos(t) .* exp(-0.4*t);
stem(t, y, 'g', 'Color', 'k');

% Hold on!
hold on
stairs(t, y, ':r', 'LineWidth', 3)
hold off
legend('\fontsize{14}\it stem', '\fontsize{14}\it stairs')
title('\fontsize{14}Reconstruction of A Sample Discrete Signal')
box on


% Comment: This could also be viewed as a re-construction of 
% discrete signal.