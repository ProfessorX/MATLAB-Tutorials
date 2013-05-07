% 20130505 XY511 16:00
% AbrahamX @ NWPU
% Just a simple example on Axis Control
t = 0: 2*pi/99: 2*pi;
x = 1.15 * cos(t);
y = 3.25 * sin(t);

% Plot
subplot(231)
plot(x, y)
axis normal
grid on
title('Normal and Grid on')

subplot(232)
plot(x, y)
axis equal
grid on
title('Equal')

subplot(233)
plot(x, y)
axis square
grid on
title('Square')

subplot(234)
plot(x, y)
axis image
box off
title('Image and Box off')

subplot(235)
plot(x, y)
axis image fill
box off
title('Image Fill and Box off')

subplot(236)
plot(x, y)
axis tight
box off
title('Tight and Box off')



% Comment: When the mountain does not rotate, the water rotates;
% when the water does not rotate, the PEOPLE rotates.