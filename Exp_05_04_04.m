% 20130506 XY511 22:45
% AbrahamX @ NWPU
% Just another example on Comet
shg;
n = 2;
% Well, should learn this way of Initializing arrays. Though unfamiliar...
t = n * pi * (0: 0.000005: 1);
x = sin(t);
y = cos(t);

% Plot
plot(x, y,'g')
axis square
hold on
comet(x, y, 0.0001)
hold off


% Comment: This is not difficult. But somewhat interesting, isn't it?
% Programming is full of fun. Do it and you'll learn from it;
% Be afraid of it, and you shall be fucked till explode by LIFE herself.