% 20130505 XY511 17:45
% AbrahamX @ NWPU
% Just another example on Plotyy
clf;
dx = 0.1;  % Increment
x = 0: dx: 4;
y = x .* sin(x);
s = cumtrapz(y) * dx;  % Trapzoidal numerical integration
a = plotyy(x, y, x, s, 'stem', 'plot');  % stem&plot, did you use this?
% Decoration
text(0.5, 1.5, '\fontsize{14}\ity=xsinx')
sint = '{\fontsize{16}\int_{\fontsize{8}0}^{ x}}';
ss = ['\fontsize{14}\its=',sint,'\fontsize{14}\itsinxdx'];  % To be pressed
text(2.5, 3.5, ss)
set(get(a(1), 'Ylabel'), 'String', 'Integrand \ity = xsinx')
set(get(a(2), 'Ylabel'), 'String', ss)
xlabel('x')



% Comment: Command "legend" could not be properly used here. So we 
% have to find some other decorations, or our boss would blame us
% for fucking ourselves. Life is a bitch. So we have to fuck it till
% EXPLODE.