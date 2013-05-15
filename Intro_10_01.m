% 20130511 XY511 22:15
% AbrahamX @ NWPU
% Just another file used in reviewing 
% "An Introduction to Matlab", v2.3, 
% By University of DUNDEE
N = 10;
h = 1/N;  % increment
x = 0: h: 1;
% x = linspace(0, 1, 11)  Another approach.
y = sin(3 * pi * x);

% Plot
plot(x, y)

% Plot, with more fine increment
N1 = 100;
h1 = 1/N1;
x1 = 0: h1: 1;
y1 = sin(3 * pi * x1);
title('Graph of y = sin(3{\pi}x)')
xlabel('x axis')
ylabel('y axis')

% -------
% Well, slight mod, do this in one program
% -------
clf;
plot(x, y, 'w-')

figure(2)  % Plot in a new figure, or clf and in this figure.
subplot(211)
plot(x, y)

subplot(212)
plot(x1, y1)


% Comment: Math works in each and every field so far as I can
% see. Including human science.

% Comment: Dinner time. Go fuck the dinner and then codes.
% Later, theory based sucking and fucking would be appreciated.

% Comment: When defining a new set of N, h and x, I did make a lot
% of mistakes that just changed N1 and no more changes in h and x.
% In this manner, the figure is TOTALLY wrong. In this practice,
% I trully understand what it means----Chanin Reaction.