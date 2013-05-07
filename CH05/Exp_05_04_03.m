% 20130506 XY511 22:08
% AbrahamX @ NWPU
% Four dimensions? That's real. Could the X dimensions be real?
% Absolutely.
clf;
[x,y,z] = meshgrid(-2:.2:2, -2:.25:2, -2:.16:2);  % Ask HELP for more
v = x .* exp(-x.^2 -y.^2 -z.^2);
xs = -0.7;
ys = 0;
zs = 0;  % Location of the slice
slice(x, y, z, v, xs, ys, zs)
colorbar
shading interp
colormap hsv
xlabel('x')
ylabel('y')
zlabel('z')
title('The Color-to-v(x,y,z) Mapping')
view([-22, 39])
alpha(0.3)

