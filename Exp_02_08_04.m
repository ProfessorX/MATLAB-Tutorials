% 20132424 XY511 21:30
% AbrahamX @ NWPU
% Visualization & Discovery
% f(x,y) = sin(x^2+y)
% Compare the primitive function and its Taylor expansion
% Lesson: Programming can do a lot of help to either your thinking,
% or your lifestyle. Say you have a lot of data to process, you can
% use MATLAB or R or even C++ to HELP you!!!
% I am so proud of being a software engineer.

% Calculate the Taylor expansion
TL1 = evalin(symengine, 'mtaylor(sin(x^2+y),[x,y],8)')  % sym type
pretty(TL1)

% Construct the primitive & error function
Fxy = sym('sin(x^2+y)')
Fxy_TL1 = Fxy - TL1  % Error function

% Ezsurf, primitive function
figure(1)  % clear figure, or you can choose another figure
ezsurf(Fxy, [-2, 2, -3, 3])  % some controls later
shading interp
view([-63, 52])
colormap(spring)
light
light('position', [-10, 4, 50], 'style', 'local', 'color', 'r')

% Ezsurf the Taylor expansion
figure(2)
ezsurf(TL1, [-2, 2, -3, 3])
shading interp
view([-43, 54])
colormap(spring)
light
light('position', [-10,2,2], 'style', 'local', 'color', [0.8,0.3,0.3])
light('position', [-2,-10,2], 'style', 'local', 'color', [0.4,0.5,0.7])

% Ezsurf primitive function, in a smaller scale
figure(3)
ezsurf(Fxy, [-0.5, 0.5, -0.5, 0.5], 'circ')  % In a circle domain
axis([-1, 1, -1, 1, -2, 2])
shading interp
colormap(spring)
view([-49, 17])
light
light('position', [-30,0,-2], 'style', 'local', 'color', 'r')

% Ezsurf, Taylor expanded function. Find that in a smaller scale,
% they could be treated as the same. BUT in a larger scale, NO!
figure(4)
ezsurf(Fxy_TL1, [-0.5, 0.5], 'circ')
shading interp
colormap(spring)
view([-53, 34])
light
light('position', [-10,15,0], 'style', 'local', 'color', [0.8,0.3,0.3])

% Comment: If and only if the radius be about 0.5 around the expansion
% point (where the function is Taylor or some other expansion, to obtain
% an approxiamted function, because the function is too hard to solve.)
% Radius <= 0.5, the approximation would be tolerable. Otherwise what you 
% are doing is just A WASTE OF TIME.
% So, treasure your youth, treasure your time. Treasure your college days.
% By Abraham Xiao at InfoSec Lab, School of Automation,
% Northwest Polytechnic University, Chang'an Campus.

