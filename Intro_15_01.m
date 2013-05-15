% 20130515 XY511 19:50
% AbrahamX @ NWPU
% Just another example in Plotting
x = 0: 0.1: 10;
y = sin(x) ./ x;

% Plot
subplot(221)
plot(x, y)
title('(i)')

u = 1./(x-1).^2 + x;
subplot(222)
plot(x, u)
title('(ii)')

v = (x.^2 + 1) ./ (x.^2 - 4);
subplot(223)
plot(x, v)
title('(iii)')

w = ((10-x).^(1/3) - 1) ./ (sqrt(4 - x.^2));
subplot(224)
plot(x, w)
title('(iv)')