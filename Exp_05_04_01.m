% 20130506 XY511 21:35
% AbrahamX @ NWPU
% Just another example on Pcolor, Contour and Contourf
clf;
clear;
[X, Y, Z] = peaks(40);  % We need the data. Or how could we do data mining
n = 6;  % Levels

% Plot
% title('\fontsize{12}Just another example on Pcolor')
subplot(121)
pcolor(X, Y, Z)
shading interp
zmax = max(max(Z));  % For max() & min(), read HELP to find more
zmin = min(min(Z));  % The largest & smallest number
caxis([zmin, zmax])
colorbar
hold on
C = contour(X, Y, Z, n, 'k:');
clabel(C)  % Marking randomly
hold off

subplot(122)
[C, h] = contourf(X, Y, Z, n, 'k:');
clabel(C, h)  % Well, you might not need this right away, But maybe I.T.F.
colormap(cool)
set(gcf, 'Color', 'w')

