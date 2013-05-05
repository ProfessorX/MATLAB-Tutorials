% 20130505 XY511 20:12
% 20130505 XY511 21:12
% AbrahamX @ NWPU
% Just another example on Ginput
clf;
x = 0: 0.001: 1;
y = (x+2) .^x - 2;
plot(x, y)
grid on
zoom on
[x, y] = ginput(1);
x
y  % Display x and y





% Comment: Have done enough sleep, then just get back to WORKING.
