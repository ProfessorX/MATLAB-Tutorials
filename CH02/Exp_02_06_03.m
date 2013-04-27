% 20130423 XY511 08:50
% AbrahamX @ NWPU
% Hold on to get to go. Life is full of out of control.

% Linear equations, left/right division approach
A = sym([1 1/2 1/2 -1; 1 1 -1 1; 1 -1/4 -1 1;...
  -8 -1  1 1]);
b = sym([0; 10; 0; 1]);
X1 = A\b  % same as inv(A)*b, but much more efficient

% Linear equations, "solve" command approach
eq1 = sym('d + n/2 + p/2 -q');  % sym expression of those functions
eq2 = sym('d + n - p + q - 10');
eq3 = sym('d - n/4 - p + q');
eq4 = sym('-8*d - n + p + q - 1');
S = solve(eq1, eq2, eq3, eq4, 'd', 'n', 'p', 'q');
disp(['  d', '  n', '  p', '  q'])
disp([S.d, S.n, S.p, S.q])
