% 20130422 XY511 11:35
% AbrahamX @ NWPU
clear all
S = dsolve('Dx = y, Dy = -x')  % Just S.x & S.y
disp(['Solution to Diff Equation', blanks(2), ...
  'x', blanks(22), 'y'])
disp([S.x, S.y])
% disp('Fuck me if you can')