% 20130422 XY511 11:45
% AbrahamX @ NWPU

% Solve diff equations and ezplot
clear all
y = dsolve('(Dy)^2 - x*Dy + y = 0', 'x')  % Format is important?

% Plot the solution curve
clf
hold on
hy1 = ezplot(y(1), [-6, 6, -4 ,8], 1);  % handle is hy1
set(hy1, 'Color', 'r', 'LineWidth', 5) 
Sv = symvar(y(2));  % recog all symvar
for k = -2: 0.5: 2
  y2 = subs(y(2), Sv(1), k);  % for diff k, plot diff curves
  ezplot(y2, [-6, 6, -4, 8], 1)  % Have to be careful enough to 
  % be a qualified programmer. Debugged at 12:30
end
hold off
box on
legend('Singular Solution', 'General Solution', 'Location', 'Best')
ylabel('y')  % Please recog the "Label"  is not "Lable"
title(['\fontsize{14}Diffirential Equation', '(y'')^2 - xy'' + y = 0',...
  ' Solution Display'])