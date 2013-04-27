% 20130427 XY511 12:20
% 20130427 XY511 15:40
% AbrahamX @ NWPU
% Numerical Conputing. "diff" & "gradient"

% WARNING: Do not compute limits by numerical method, unless
% you have done the theory testing ALREADY.

% Direct numerical computing could be deceiving
x = eps;
L1 = (1-cos(2*x))/(x*sin(x))
L2 = sin(x)/x  % HAPPEDED to be true. But you cannot do this!!!

% Trustworthy one
syms t
f1 = (1-cos(2*t))/(t*sin(t));
f2 = sin(t)/t;
Ls1 = limit(f1, t, 0)
Ls2 = limit(f2, t, 0)



% Comment: Compared with symbolic computing, numerical has a MUCH
% wider area of usage, in either Science or Engineering field.
% Comment: Numerical computing is the most common method of solving
% differential equations.

% Comment: Plan to finish the reviewing & programming till CH6
% for today, namely April 27th. Programming for a better future.

% Suggestion: To fully understand numerical computing, you have to
% MATSER mathematics, especially Discrete Mathematics. 
% ----------------------------------------------------------------
% I have got the book "Discrete Mathematics". So?
% So spare some time reading it. Verify the equations in it using 
% MATLAB. Remember, learning is just a process. Be patient.
% ----------------------------------------------------------------
% Math works. Math helps you find your LOVER~
