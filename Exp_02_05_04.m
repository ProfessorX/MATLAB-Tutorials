% 20130422 XY511 22:15
% AbrahamX @ NWPU
% Laplace Transform

% In signal processing, you should have some
% idea of certain functions. Dirac is an example

% Suggestion: When call fourier/laplace function, use the
% full format, namely, add all variables into it. Or rather,
% problems will arise.
syms t s a b
f1 = exp(-a*t) * sin(b*t)
F1 = laplace(f1, t, s)

% u(t-a), a will effect this transform
syms a clear  % clear assumptions in the beginning
f2 = heaviside(t-a)
F2 = laplace(f2, t, s)

syms a positive  % Assume a to be positive, see the difference
F3 = laplace(f2)

% In dirac(t-b), b has some effects also.
f4 = dirac(t-b);
F4 = laplace(f4, t, s)  % Two results.

f5 = dirac(t-a);  % a, assumed to be positive
F5 = laplace(f5, t, s)
ft_F5 = ilaplace(F5, s, t)  % inverse to see TRUE or FALSE

% see t^{n}'s effect
n = sym('n', 'clear');  % No restrictions!
F6 = laplace(t^n, t, s)

n = sym('n', 'positive');
F7 = laplace(t^n, t, s)  % See, everyone shall have RESTRICTIONS.

% Lesson: You should limit yourself to certain things, like
% NO network connection when you are programming, and reviewing
% what you have learned. Work hard then you can have the resource to
% publish what you have found, what your idea is. What's the plan, and so
% on.