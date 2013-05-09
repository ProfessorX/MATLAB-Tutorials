%%
% Exp_06_02_01.m    The area and perimeter of a regular polygon
% N    The number of sieds.
% R    The circumradius
% str  A line specification to determine line type/color
% S    The area of the regular polygon
% L    The perimeter of the regular polygon
% -----Sample of Calling the function-------
% Exp_06_02_01    Plot a circle with radius=1, solid blue line
% Exp_06_02_01(N) Plot a N-side polygon with radius=1, solid blue line
% Exp_06_02_01(N,R) Same as above, except that radius=R
% Exp_06_02_01(N,R,str) Same as above, except that line type is specified
% S = Exp_06_02_01(...) Plot and return area of the polygon
% [S,L] = Exp_06_02_01(...) Plot and return area as well as perimeter
% Original Author: Zhiyong Zhang@NJUPT, Jan. 31st, 2006
% Modified by Abraham Xiao@NWPU, May 7th, 2013

%%
% 20130507 XY511 17:30
% AbrahamX @ NWPU
% Just another program guiding you how to write *.m function
% files. Aha, life as a bitch, fuck it till explode. DO IT.
% Just another example on MATLAB function files.
% It's a slightly advanced function of plotting lines and curves.



function [S,L] = Exp_06_02_01(N,R,str)


switch nargin  % Hey buddy, tell me how many arguments you have spec.
  case 0
    N = 100;
    R = 1;
    str = '-b';
  case 1
    R = 1;
    str = '-b';
  case 2
    str = '-b';
  case 3
    % Extra semicolon is unnecessary
  otherwise
    error('Buddy! You have specified TOO MANY arguments.');
end

% Initialization
t = 0: 2*pi/N: 2*pi;  % Oops, it's a CIRCLE.
x = R * sin(t);
y = R * cos(t);

if (nargout == 0)
  plot(x, y, str);
elseif (nargout > 2)
  error('Buddy! TOO MANY output arguments.');
else
  S = N * R * R * sin(2*pi/N)/2;  % Area of the polygon
  L = 2 * N * R * sin(pi/N);  % Perimeter of the polygon
  fill(x, y, str)
end
axis equal square
box on
shg






% Comment: Copyright by Zhiyong Zhang @ Nanjing University of 
% Post and Telecommunication. Modified by Abraham Xiao @ NWPU, China.
