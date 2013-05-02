% 20130426 XY511 22:00
% AbrahamX @ NWPU
% Application of Logic Computing

% Note: should NOT use (increment=pi/100)
t = -3*pi: pi/10: 3*pi;  % There's a 0 in array
y = sin(t) ./ t;  % IEEE rule, should be a NaN in y
tt = t + (t==0)*eps;  % 0 is REPLACED by eps
yy = sin(tt) ./ tt;  % sin(eps)/eps  <-- sin(0)/0

% Plot
subplot(121)
plot(t, y)
axis([-9, 9, -0.5, 1.2])
xlabel('t')
ylabel('y')
title('Incomplete Graph')

subplot(122)
plot(tt, yy)
axis([-9, 9, -0.5, 1.2])
xlabel('tt')
ylabel('yy')
title('Complete Graph')

% Comment:
% logic computing could be used to tell whether is a 0(num)
% in one matrix. And when computing limit in a numeric way,
% the pre-defined number "eps would help a lot.