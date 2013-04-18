% 20130418 XY511 22:40
% AbrahamX @ NWPU
% Fucker Sun told me that I had a low
% Learning efficiency. And what else could I say?
% I could just "HeHe" and told him that,
% Too young, too simple.
% Life is a bitch, and I, as a programmer, is fucking it.
% It's all over, I do not want to talk about it, anymore.

syms x

% The syntax of TAYLOR has changed. So please "doc taylor"
% To find useful information.
% When in doubt, SCREAM "Help" for more!!!
r = taylor(x * exp(x), x, 0, 'Order', 9)  % Let it be level 9
pretty(r)

% Call MuPAD engine to solve it
R = evalin(symengine, 'series(x * exp(x), x=0, 8)')
pretty(R)