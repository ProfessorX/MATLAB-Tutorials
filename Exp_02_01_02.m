% 20130417 XY511 22:16
% Programming for a better future
syms u v w z a5  % symbolic parameters and variables
f = sym('3');  % symbolic constant
Eq = sin(f) * u + z^2 + v*Z + f*W - a5  % Expression

symvar(Eq)  % Note: there is no 'f' for the output

symvar(Eq, 100)  % List all

symvar(Eq, 1)  % Identify just 1 var

% WARNING The result might be different from 
% your common sense!
result_1 = solve(Eq)

% See the result would be different or not?
result_2 = solve(Eq, z)  % Set the free variable as 'z'


