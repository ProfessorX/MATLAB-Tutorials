% 20130422 XY511 19:45
% AbrahamX @ NWPU
% Software Engineer? Are you a software engineer.

% Fourier Transform
syms A t w tao  % You will find "tao" a lot later
% Math definition of rectangular pulse
yt = A * (heaviside(t + tao/2) - heaviside(t - tao/2))
Yw = fourier(yt, t, w)  % Fourier transform
Yw_fy = simplify(Yw)
Yw_fy_e = simplify(Yw_fy)

% Verify by using inverse transform
Yt = ifourier(Yw_fy_e, w, t)
Yt_e = simplify(Yt)  % Shortes expression

% T-domain curve (A = 1; tao = 3)
t3 = 3;
tn = -3: 0.01: 3;
yt13 = subs(yt, {A, tao}, {1, t3})
yt13n = subs(yt13, 't', tn);  % Whoops, array -_-
% Next line is of great value. Learn from it, please

% ################################  
kk = find(tn == -t3/2 | tn == t3/2)  % "find" is a good func.
% ################################  Classic

plot(tn(kk), yt13n(kk), '.r', 'MarkerSize', 30)  % breakpoint
yt13n(kk) = NaN;  % set the value, make it trully "break"
hold on 
plot(tn, yt13n, '-r', 'LineWidth', 3)
hold off
grid on
xlabel('t')
ylabel('y(t)')
title('\fontsize{14}Heaviside(t+1.5) - Heaviside(t-1.5)')
axis([-3, 3, -0.5, 1.5])

% F-domain curve (another figure)
Yw13 = subs(Yw_fy_e, {A,tao}, {1,t3});
subplot(211)
ezplot(Yw13)
grid on
subplot(212)
ezplot(abs(Yw13))
grid on

