a = -8;
r_a = a^(1/3)

% Construct a poly p(r) = r^3 - a
p = [1, 0, 0, -a];
% Find the roots of poly p
R = roots(p);

% Calc the abs value of complex roots
MR = abs(R(1)); 
t = 0: pi/40: 2*pi;
x = MR * sin(t);
y = MR * cos(t);
% And you should notice the function of "comma" in 
% English format will act differently in different situations
plot(x, y, 'b:'), grid on  % Draw a circle, radius = R

hold on
% Plot the complex root of the 1st quadrant
plot(R(2), '.', 'MarkerSize', 30, 'Color', 'r')
% The other two roots
plot(R([1,3]), 'o', 'MarkerSize', 15, 'Color', 'b') 
axis([-3, 3, -3, 3])
axis square
hold off


