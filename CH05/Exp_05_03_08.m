% 20130506 XY511 21:25
% AbrahamX @ NWPU
% This is a modification of Exp_05_03_07
clf;
x = [-8: 0.1: 8];
y = x;
[X, Y] = meshgrid(x, y);
ZZ = X.^2 - Y.^2;

ii = find(abs(X)>6 | abs(Y)>6);  % In some situations, find could be omitted
ZZ(ii) = zeros(size(ii));  % Set as 0. Why, see the figure
% Plot
surf(X, Y, ZZ)
title('\fontsize{14}Figure after Cropping')
shading interp 
colormap(copper)
light('Position', [0, -15, 1])
lighting phong
material([0.8, 0.8, 0.5, 10, 0.5])