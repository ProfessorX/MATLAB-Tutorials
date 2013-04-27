% 20130418 XY511 15:20
% AbrahamX @ NWPU
% You will find how "subs" works and,
% a proper way to do exchange between sym and data
% calculation.

clear all
syms a b x;
f = a * sin(x) + b

f1 = subs(f, sin(x), 'log(y)')
class(f1)  % the new could be char string.

f2 = subs(f, a, 3.11)  % the "3.11" will be turned to '3.11'
class(f2)

% Find more about Cell Array from Help
f3 = subs(f, {a,b,x}, {2,5,sym('pi/3')})
class(f3)

format  % set to default
format compact
f4 = subs(f, {a,b,x}, {2,5,pi/3})  % Now it's numerical
class(f4)

f5 = subs(f, x, 0:pi/2:pi)  % Whoops, it's an array!
class(f5)

t = 0: pi/10: 2*pi
f6 = subs(f, {a,b,x}, {2,3,t})
plot(t, f6)

% We will do two times of replacement...
k = (0.5: 0.1: 1)'
f7 = subs(subs(f, {a,b}, {k, 2}), x, t);  % TWO subs!
size(f7)
plot(t, f7)



