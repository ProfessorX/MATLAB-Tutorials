% 20130501 XY511 22:55
% AbrahamX @ NWPU
% Rosen-Brock's "Banana" Testing function

% Anonymous function
ff = @(x)(100 * (x(2)-x(1).^2)^2 + (1-x(1))^2)

% Fminsearch approach
% format short g, you can remove the comment.
x0 = [-5, -2, 2, 5; -5, -2, 2, 5];  % Starting points
[sx, sfval, sexit, soutput] = fminsearch(ff, x0)

% Verification
disp([ff(sx(:,1)),ff(sx(:,2)), ff(sx(:,3)), ff(sx(:,4))])

% Comment: The independent variable is not represented as 
% the tranditional x&y, but a [BINARY VECTOR]. This could be
% treated as novel, well-worth reviewing.