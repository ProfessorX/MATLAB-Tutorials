% 20130502 XY511 16:00
% AbrahamX @ NWPU
% Soving general equations
% Method: Guessing where the f(x_0)=0 is, and make x_0
% more accurate.

% Symbolic Approach
syms t
ft = sin(t)^2 * exp(-0.1*t) - 0.5*abs(t);
S = solve(ft, t)  % tranditional SYM method, see the result
ftS = subs(ft, t, S)  % verification

% Numeric Approach
% ----Inline Object----
y_C = inline('sin(t).^2 .* exp(-0.1*t) - 0.5*abs(t)', 't');  % ask HELP

% ----Plot----
t = -10: 0.001: 10;  % sampling
Y = y_C(t);  % Calc function value
clf;

% Plot
plot(t, Y, 'r');
hold on
plot(t, zeros(size(t)), 'k');  % axis
xlabel('t')
ylabel('y(t)')
title('y(t) within scale [-10, 10], helping find zero points')
hold off

% Zoom and Get-Input
zoom on
[tt, yy] = ginput(5)  % get 5 point pairs, to minimize scale
zoom off
tt  % display the points (x-coord)

% Finializing results with a more accurate scale
[t4, y4] = fzero(y_C, 0.1)

% Comment: Not-So-Accurate zero points (x-coordinate)
% tt =
%
%  -2.046370967741934
%  -0.473790322580644
%  -0.010080645161290
%   0.614919354838710
%   1.743951612903226

% Comment: For now, I do not have a girlfriend, which becomes
% a convenient for me, to concentrate on the stuff like scientific
% research, especially reading, writing and programming. I never
% have to worry about when should take lunch/dinner with her, just
% about when to finish this project and earn fame & fortune.
% Proudly being a bachelor, as well as a programmer.