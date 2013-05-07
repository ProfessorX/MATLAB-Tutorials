% 20130504 XY511 22:22
% AbrahamX @ NWPU
% Plotting, Odd Regular Polygon & Circle

% Initialization
N = 9;  % Num of edge
t = 0: 2*pi/N: 2*pi;  % Increasing order
x = sin(t);
y = cos(t);
tt = reshape(t, 2, (N+1)/2); % A t-by-2 matrix
tt = flipud(tt);
tt = tt(:);  % Random order, to have fun
xx = sin(tt);
yy = cos(tt);


% Plot
subplot(121)
plot(x, y)  % Obtain a normal fig.
title('Normal Fig. with Right (x,y) Pairs')
axis equal off
shg
subplot(122)
plot(xx, yy)
title('Abnormal Fig. with Random (x,y) Pairs')
axis equal off
shg


