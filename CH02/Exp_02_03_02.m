% 20130418 XY511 18:11
% AbrahamX @ NWPU
% The following few are aboout integral and
% differential
syms a t x;
f = [a, t^3; t*cos(x), log(x)]
df = diff(f)  % diff matrix f, x as the variable

dfdt2 = diff(f, t, 2)

dfdxdt = diff(diff(f, x), t)