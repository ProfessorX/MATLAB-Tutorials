% 20130515 XY511 22:50
% AbrahamX @ NWPU
x = zeros(1, 20);
x(1) = pi/4;
n = 1;
d = 1;

while d > 0.001
  n = n+1;
  x(n) = cos(x(n-1));
  d = abs(x(n) - x(n-1));
end

% Display
n
x


% -------
% The other way around
% -------
xold = pi/4;
n = 1;
d = 1;
while d > 0.001 & n < 20
  n = n+1;
  xnew = cos(xold);
  d = abs(xnew - xold);
  xold = xnew;
end

[n, xnew, d]
