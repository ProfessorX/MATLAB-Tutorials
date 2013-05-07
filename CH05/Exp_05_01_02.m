% 20130504 XY511 21:45
% AbrahamX @ NWPU
% Visualization of Continuous Functions
% Just another program in MATLAB

t1 = (0:11)/11*pi;  % Just 12 sampling points
t2 = (0:400)/400*pi;  % Holy Shit
t3 = (0:50)/50*pi;  % Enough is enough

% Array! A huge wave of array is COMING
y1 = sin(t1) .* sin(9*t1);
y2 = sin(t2) .* sin(9*t2);
y3 = sin(t3) .* sin(9*t3);

% Plot
subplot(221)
plot(t1, y1, 'r.')  % Just discrete point pairs
axis([0, pi, -1, 1])
title('Discrete Fig. with Too Few Sampling Points')
subplot(222)
plot(t1, y1, t1, y1, 'r.')
axis([0, pi, -1, 1])
title('Continuous Fig. with Too Few Sampling Points')
subplot(223)
plot(t2, y2, 'r.')
axis([0, pi, -1, 1])
title('Discrete Fig. with Too Many Sampling Points')
subplot(224)
plot(t3, y3)  % Continuous curve, MATLAB will automatically comp
axis([0, pi, -1, 1])
title('Continuous Fig. with Just Enough Sampling Points')








% Comment: Say, at times you shall never be able to find a girl
% and fuck her till explode. So? So please roll