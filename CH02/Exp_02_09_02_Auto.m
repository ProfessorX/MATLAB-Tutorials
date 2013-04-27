function y = Exp_02_09_02_Auto(de,x,a,b,yL,yR,flag)
% 20130425 XY511 09:45
% AbrahamX @ NWPU
% Differential Equation, two-point boundary value problem.
% Find its numerical solution.
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

if nargin ~= 7
  error('Invalid Input! You should have 7 variables typed in...')
end

s = dsolve(de, 'y(a) = yL, y(b)=yR', 'x');
Hs = matlabFunction(s, 'vars', {'x','a','b','yL','yR'});
y = Hs(x,a,b,yL,yR);

if flag == 1
  plot(x,y,'-b',[a,b],[yL,yR], '*r')
  title(de)  % de means the Differential Equation you have defined.
  % So it's much more clearer than just display "Diff Equa"
  xlabel('x')
  ylabel('y')
  shg
end

% Take some more exercise or you would die from
% FUCKING YOURSELF. That's merely an institute.