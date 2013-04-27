% 20130417 XY511 22:47
% AbrahamX @ NWPU 

% Complex domain
syms x clear
f = x^3 + 4.75*x + 2.5
rf = solve(f, x)  % find the roots of 'f = 0'
assumptions(x)

% Real number domain
syms x real
rfr = solve(f, x)  % root for formula 'f', real number
assumptions(x)

% A little trick
clear x
syms x
g = x^2 + x + 5;
rg = solve(g, x)  % Assumption is still HERE, you name it

% Trick break
sym('x', 'clear')
rg = solve(g, x)






