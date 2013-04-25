% 20130424 XY511 22:30
% AbrahamX @ NWPU
% Next-->Fully employ the MuPAD symengine
% Knowledge point: matlabFunction
clear all
s = simple(dsolve('x*D2y - 3*Dy = x^2', 'y(a)=yL,y(b)=yR', 'x'))

% Creat a *.m file to make the above program more adaptive
Hs = matlabFunction(s, 'file', 'Exp_02_09_01_Auto', 'vars', ...
  {'x','a','b','yL','yR'}, 'outputs', {'y'})

% Verify Exp_02_09_01_Auto, right or wrong
a =1;
b =5;
yL = 0;
yR = 0;  % Set for the numerical computing
xn = -1: 6;
yn = Hs(xn, a, b, yL, yR)
x = -1: 0.2: 6;
y = Hs(x, a, b, yL, yR);  % To make the curve looks more smoothly
plot(x, y, 'b-')
hold on
plot([1,5],[0,0], '.r', 'MarkerSize', 20)
hold off
title(['xy{\prime\prime} - 3y{\prime} = x^2', ' ','y(1)=0', 'y(5)=0'])
text(1,1,'y(1)=0')
text(4,1,'y(5)=0')
xlabel('x')
ylabel('y')