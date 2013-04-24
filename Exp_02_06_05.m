% 20130424 XY511 10:00
% AbrahamX @ NWPU
syms d n p q
eq1 = d + n/2 + p/2 -q;
eq2 = n + d + q - p - 10;
eq3 = q + d - n/4- p;
S = solve(eq1, eq2, eq3, d, n, p, q);
disp(['  S.d', '    S.n', '    S.p', '      S.q'])
disp([S.d, S.n, S.p, S.q])  % So you will see one variable

% Comment: The variable took the place as one more equation.
% Math works, math is great. Use mathematics to beautify your life.