% 20130505 XY511 22:45
% AbrahamX @ NWPU
% Just another example on Hidden
[X0, Y0, Z0] = sphere(30);  % Generate those numbers we need
X = 2 * X0;
Y = 2 * Y0;
Z = 2 * Z0;

% Plot
surf(X0, Y0, Z0)  % Plot the sphere
shading interp
hold on
mesh(X, Y, Z)
colormap(hot)
hold off
hidden off
axis equal
axis off



% Comment: Well, as with graphing and data processing, there is 
% a lot you can do, with MATLAB. Math works, Beauty works.

% Comment: Have to take a jogging tonight, for my health. For a 
% better future of P.R.China.
