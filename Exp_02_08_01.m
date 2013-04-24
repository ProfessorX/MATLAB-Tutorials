% 20130424 XY511 12:00
% AbrahamX @ NWPU
% Visualize your results in symbolic computation
syms t tao
y = 2/3 * exp(-t/2) * cos(sqrt(3)/2*t)  % Definition
s = subs(int(y,t,0,tao), tao, t)
subplot(211)
ezplot(y, [0, 4*pi])
ylim([-0.2, 0.7])
grid on
subplot(212)
ezplot(s, [0, 4*pi])
grid on
title('s = \int y(t)dt')

% Comment: You should have a good command of English,
% then when you encounter the problem, you can look into
% the User Manual for help without any trouble. And effectively.
% So many stories and lessons I won't tell you. For you are
% not my wife. Aha, life is a bitch.
