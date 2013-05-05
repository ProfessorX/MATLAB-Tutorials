% 20130505 XY511 21:40
% AbrahamX @ NWPU
% Just another example on Surf & Mesh
clf;
x = -4: 4;
y = x;
[X, Y] = meshgrid(x, y);  % Obtain meshgrid matrix
Z = X.^2 + Y.^2;  % Calculate Z values
surf(X, Y, Z)
colormap(hot)
hold on
stem3(X, Y, Z, 'bo')
xlabel('x')
ylabel('y')
zlabel('z')
axis([-5, 5, -5, 5, 0, inf])  % Control the axis, needs experience
view([-94, 21])  % Control the view
