% 20130427 XY511 18:00
% AbrahamX @ NWPU
% Learning how to use new command, "integral"

% Creating functions & Plot 
x = linspace(0.01, 1.2, 50);  % Array x, with 50 points
g1 = x .^ (-0.2);
g2 = x .^ 5;  % Two Functions
plot(x, g1, '-r.', x, g2, '-b*')
axis([0, 1.2, 0, 3])
legend('g_1(x)=1/x^{0.2}', 'g_2(x)=x^5', 'Location',...
  'North')
title(['x is located between [0,1], and folded by g_1(x)',...
  'and g_2(x)'])


