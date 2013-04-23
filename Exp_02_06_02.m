% 20130423 XY511 17:45
% AbrahamX @ NWPU
% A simple Givens Rotation
syms t
A = sym([sqrt(3)/2, 1/2; 1/2, sqrt(3)/2])
G = [cos(t), -sin(t); sin(t), cos(t)]  % General Givens mattrix
GA = G * A

% Plot the Rotation
clf
An = subs(GA, t, 110/180*pi);  % 110 degree
Op = [0; 0];  % Origin point, for plotting
Ad = double(A);  % transform from sym to num
v1 = [Op, Ad(:,1)]';
v2 = [Op, Ad(:,2)]';  % Row vector
u1 = [Op, An(:,1)]';
u2 = [Op, An(:,2)]';  % Column vector

plot(v1(:,1), v1(:,2), '--k', v2(:,1) , v2(:,2), 'b')
axis([-1, 1, -1, 1])
axis square
hold on
hu = plot(u1(:,1), u1(:,2), '--k', u2(:,1), u2(:,2), 'b');
set(hu, 'LineWidth', 4)
title('Givens Rotation')
Lstr = ['v1'; 'v2'; 'u1'; 'u2'];
legend(Lstr, 'Location', 'South')
hold off
grid on