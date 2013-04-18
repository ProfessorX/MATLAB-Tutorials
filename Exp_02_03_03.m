% 20130418 XY511 18:18
% AbrahamX @ NWPU
% Next few:----Dinner as noodels...
% And send the ZhuangBi Text back...Aha.
% Then back here do some programming.
% Do some more programming in MATLAB, aha, I am
% a software engineer...

% jacobian matrix
syms x1 x2;
f = [x1*exp(x2); x2; cos(x1)*sin(x2)];
v = [x1; x2]

Jf = jacobian(f, v)