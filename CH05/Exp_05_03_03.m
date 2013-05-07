% 20130505 XY511 21:45
% AbrahamX @ NWPU
% Just another example on Shading
clf;
x = -4: 4;
y = x;
Z = X.^2 + Y.^2;
figure(1)
surf(X, Y, Z)
colormap(jet)

figure(2)  % In C++, we would say, new figure
subplot(131)
surf(Z)
axis off
subplot(132)
surf(Z)
axis off
shading flat
subplot(133)
surf(Z)
axis off
shading interp
set(gcf, 'Color', 'w')  % Background color? White please.


% Comment: Life is a bitch. Why not fuck it till explode?
% This is a harmonious world. So we would like to fuck this
% till explode.

