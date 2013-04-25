% 20130425 XY511 11:30
% AbrahamX @ NWPU
% Blind Typing, Blind Date. Blind Programming.
% f(t) = exp(-(abs(sin(t)))), s(x) = int(f, t, 0,4).
% In calculating s(x), you'll find the ESSENSE difference
% between Symbolic computation & Numeric Computation
% So proud of being a software engieer. So PROUD.


% Symbolic Computation
% So many limitations to SYMBOLIC COMPUTING!
% But why the CHINESE college teachers like them so much?
% They are poor at calculation! Poor at PROGRAMMING.
syms t x
ft = exp(-abs(sin(t)))  % Definition of f(t)
sx = int(ft, t,0, 4)  % FUCK ME, what's wrong with s(x)!

% Just a Numeric Approcach
% A strong foundation in Linear Algebra is IMPORTANT
dt = 0.05;  % Sampling Interval, could be modulated.
t = 0: dt: 4;  % Ranging from 0 to 4. Sample then plot.
Ft = exp(-abs(sin(t)));  % Ft is also a vector, same amount elements as t.
Sx = dt * cumtrapz(Ft);
Sx(end)  % Value of definite integral


% Plot, and see HOW numerical method works
plot(t, Ft, '*r', 'MarkerSize', 4)
hold on
plot(t, Sx, '.k', 'MarkerSize', 15)
hold off
title('f(t)=e^{-|sin(t)|} & s(x)=\int_0^4 f(t)dt')
xlabel('x')
legend('Ft', 'Sx', 'Location', 'Best')


% Comment: Why MATLAB is named as MATLAB? You can see other than
% MATLAB, you shall never find a more powerful programming/tool to 
% help you cope with SO LARGE/SO COMPLICATED matrix.
% Math is the future, Math works. I love MATLAB. I love C++.
% And what's more, I am crazy about Lisp/LaTeX.