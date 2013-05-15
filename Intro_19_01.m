% 20130515 XY511 21:45
% AbrahamX @ NWPU
% Just another example in Loops
x = -1: 0.05: 1;
figure(1)
for n = 1: 8
  subplot(4, 2, n)
  plot(x, sin(n*pi*x))
end

% Just some codes more
figure(2)
for n = 1: 2: 8
  subplot(4, 2, n)
  plot(x, sin(n*pi*x))
  subplot(4, 2, n+1)
  plot(x, cos(n*pi*x))
end