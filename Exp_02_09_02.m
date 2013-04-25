% 20130425 XY511 09:45
% AbrahamX @ NWPU
% Take some more exercise or you would die from
% FUCKING YOURSELF. That's merely an institute.

% Differential Equation, two-point boundary value problem.
% Find its numerical solution.
function y = Exp_02_09_02(de,x,a,b,yL,yR,flag)
% Just another MATLAB program
% y = Exp_02_09_02_Auto()  boundary value problem, num solution.
% de        Diff Euqation, x is the independent variabe
% x         Array for independent variable x
% a,b       X-coordinate for left and right boundary value
% yL,yR     Y-coordinate for left and right boundary value
% flag      When flag is 0, do not plot; When flag is 1, plot. Other 
%           numbers are invalid
% Original author-->Zhiying Zhang @ Nanjing University of Post & Telecom
% Reviewed & Revised by Abraham Xiao @ InfoSec Lab, NWPU, 2013

% if nargin ~= 7
%  error('Invalid Input! You should have 7 variables typed in...')
% end

% s = dsolve(de, 'y(a) = yL, y(b)=yR', 'x');
% Hs = matlabFunction(s, 'vars', {'x','a','b','yL','yR'});
% y = Hs(x,a,b,yL,yR);

% if flag == 1
%  plot(x,y,'-b',[a,b],[yL,yR], '*r')
%  title('Differential Equation, Numerical Solutions')
%  xlabel('x')
%  ylabel('y')
%  shg
% end


% Next will be some real number to test its performance.
x = -1: 6;
a = 1;
b = 5;
yL = 0;
yR = 0;
de1 = 'x*D2y - 3*Dy = x^2';
y = Exp_02_09_02_Auto(de1, x, a, b, yL,yR, 0)

% Just one more testing group, and take some rest. 
% Well, you should copy your classmates' actions, you
% are a man of thoughts, of fucking and great potential.
% Practice a lot more, keep moving, keep fucking yourself.
de2 = 'x*D2y - 3*Dy = 3*(x^2) + x'
x = -1: 0.2: 6
y = Exp_02_09_02_Auto(de2, x, 3, 6, -2, 10, 1);