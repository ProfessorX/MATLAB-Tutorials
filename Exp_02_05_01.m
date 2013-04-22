% 20130422 XY511 17:40
% AbrahamX @ NWPU
% For the fourier, laplace & z transform
% Alongside with convolution
syms t w
ut = heaviside(t)
UT = fourier(ut)

% So you have to do the REVIEW to keep your mind
% ACTIVE & FRESH
Ut = ifourier(UT, w, t)  % inverse transform
SUt = simple(Ut)  % Simplify

% Plot the heaviside function 
t = -2: 0.01: 2;
ut = heaviside(t);  % display the result...But they are TOO MANY
kk = find(t == 0)  % which element in Array t[] equals 0
plot(t(kk), ut(kk), '.r', 'MarkerSize', 30)
hold on
ut(kk) = NaN;  % Break from point kk
plot(t, ut, '-r', 'LineWidth', 3)
plot([t(kk),t(kk)], [ut(kk-1), ut(kk+1)], 'or', 'MarkerSize',...
  10)  % two hollow circle to show the 'or'
hold off
grid on
axis([-2, 2, -0.2, 1.2])
xlabel('\fontsize{14}t')
ylabel('\fontsize{14}ut')
title('\fontsize{14}Heaviside(t)')

% You will find "kk = find(t == 0)" & "ut(kk) = NaN"
% of great help in this program. For it could mark the break successfully