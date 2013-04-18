% 20130418 XY511 16:00
% AbrahamX @ NWPU
syms t x k
s = sin(k*t)/(k*t)
f = (1-1/x)^(k*x);

% Now let's find their limits
Lsk = limit(s, 0)  % Limit of s when t --> 0
Ls1 = subs(Lsk, k, 1)  % It's a great function, so to remember
Lf = limit(f, x, inf)  % Limit of f when x --> inf
Lf1 = vpa(subs(Lf, k, sym('-1')), 48)