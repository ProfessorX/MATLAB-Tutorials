% 20130502 XY511 22:00
% AbrahamX @ NWPU
% How to generate random arrays, sequences and streams which
% are independent and identically distributed, by various means.

% Approach #1, the same rng stream
rng default
rng(2)
N = 10000;
a = randn(N+2, 1);
A = [a(1:N), a(2:N+1), a(3:N+2)];  % It's a Toeplitz array
A(1:4, :)  % Display first 4 rows
CA = corrcoef(A)  % Correlation Coefficients

% Approach #2, same rng stream, diff subsegment
clear
rng(5)  % length of digits
N = 10000;
A = rand(N, 3);
B = randn(N, 3);  % Normal Distribution
C = rand(N, 3);
RAB = corrcoef(A(:), B(:))
RAC = corrcoef(A, C)  % Statistically independent, as shown

% Approach #3, different initaial seeds. WTF!
clear
N = 10000;
rng(17)
a = randn(1, 5)
A = rand(N, 3);
rng(18)  % Handle for global random number stream
b = randn(1, 5)  % You'll find a&b are different
B = rand(N, 3);  % See A&B, should they be the same?
CAB = corrcoef([A, B])  % Are they independent from each other?

% Approach #4, different random number generator
clear
N = 1e4;
rng default  % reset, Aha
a = rand(N, 1);
rng(0, 'v4')
b = rand(N, 1);
Cab = corrcoef(a, b)


% Comment: When simulating a Monte Carlo system, using some diff
% generator to produce random number stream is essential. And this
% would make your conclusions much more trust-worthy.
% ---->Then as with Monte Carlo simulation, various streams with
% the help of various generators is the best choice. (Best practice?)
% maybe.

% Reference: There is a table in Page 187, ZYZhang's book. Consult
% this and the Internet when situation varies.


