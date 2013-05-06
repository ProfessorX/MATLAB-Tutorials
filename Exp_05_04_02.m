% 20130506 XY511 21:55
% AbrahamX @ NWPU
% Four dimensions? Kidding me? Fucking me? Fucking U.
% Well, if you look at it, you may find it not that bad an institute.
% Find your interest, figure out the right & clear way to fuck
% those stuff till EXPLODE. Only in this way will you be successful.

clf;  % Or just new a figure
x = 3 * pi * (-1: 1/15: 1);
y = x;
[X, Y] = meshgrid(x, y);
R = sqrt(X.^2 + Y.^2) + eps;
Z = sin(R) ./ R;
[dzdx, dzdy] = gradient(Z);
dzdr = sqrt(dzdx.^2 + dzdy.^2);  % Total derivative
dz2 = del2(Z);  % Curvature

% Plot
subplot(121)
surf(X, Y, Z, abs(dzdr))
shading faceted
colorbar('SouthOutside')
brighten(0.6);  % Yes, Minister.
colormap hsv
title('No. 1    surf(X, Y, Z, abs(dzdr))')

subplot(122)
surf(X, Y, Z, abs(dz2))  % Coloring
shading faceted
colorbar('NorthOutside')
title('No. 2    surf(X, Y, Z, abs(dz2))')

