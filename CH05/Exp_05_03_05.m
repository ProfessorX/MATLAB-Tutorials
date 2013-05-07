% 20130505 XY511 22:30
% AbrahamX @ NWPU
% Just another example on Light, Lighting and Material
clf;
[X, Y, Z] = sphere(40);
colormap(jet)

% Plot
subplot(121)
surf(X, Y, Z)
axis equal off
shading interp
light('position', [0, -10, 1.5], 'style', 'infinite')
lighting phong
material shiny

subplot(122)
surf(X, Y, Z, -Z)
axis equal off
shading flat
light;
lighting flat
% You can have as many lights as you want.
light('position', [-1, -1, -2], 'color', 'y')
light('position', [-1, 0.5, 1], 'style', 'local', 'color', 'w')
set(gcf, 'Color', 'w')  % Background color? White.