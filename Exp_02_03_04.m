% 20130418 XY511 21:45
% AbrahamX @ NWPU
% Software engineer? Are you a software
% Engineer? Graduated from engineering school.

% f = sin|x|
% find df when x>0
clear all
syms x
syms d positive
f_p = sin(x)  % x>=0, f = sin(x)
df_p = limit((subs(f_p,x,x+d) - f_p)/d,d,0)  % diff, when x>0
df_p0 = limit((subs(f_p,x,d) - subs(f_p,x,0))/d,d,0)

% find df when x<0
f_n = sin(-x)
df_n = limit((f_n - subs(f_n,x,x-d))/d,d,0)
df_n0 = limit((subs(f_n,x,0) - subs(f_n,x,-d))/d,d,0)

% Do the diff directly. And it's DIFFERENT!
f = sin(abs(x))
dfdx = diff(f, x)
dfdx0 = subs(dfdx, x, 0)  % So the result would be different

% Plot and see the 2 dimensioned function. To find more.
clf
xn = -3/2*pi: pi/500: 0;  % Negative part
xp = 0: pi/500: 3/2*pi;  % Positive part
xnp = [xn, xp(2: end)];  % 2 zero, so omit one
hold on
plot(xnp, subs(f, x, xnp), 'k', 'LineWidth', 3)
plot(xn, subs(df_n, x, xn), '--r','LineWidth', 3)
plot(xp, subs(df_p, x, xp), ':r', 'LineWidth', 3)
legend(char(f), char(df_n),char(df_p), 'Location', 'NorthEast')
grid on
xlabel('x')
hold off

