% 20130504 XY5111 22:30
% AbrahamX @ NWPU
% Just a simple MATLAB code on command "plot"
clf
t = (0: pi/50: 2*pi)';  % Column array
k = 0.4: 0.1: 1;  % Row array
Y = cos(t) * k;  % Y is a 107-by-1 matrix

% Plot
subplot(121)
plot(t, Y, 'LineWidth', 1.5)
title('Fig. with plot(t, Y)')
xlabel('t')
subplot(122)
plot(Y, 'LineWidth', 1.5)
title('Fig. with plot(Y)')
xlabel('row subscript of Y')  % You will find a different xlabel