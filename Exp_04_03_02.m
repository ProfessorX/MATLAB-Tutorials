% 20130502 XY511 18:20
% AbrahamX @ NWPU
% Sample on Normal Distribution
% FBI Warning: You must have a good command of Data Structure
% before turning yourself into, either an engineer or scientist.
% Data Structure & Algorithm matters, and matters a lot.
mu = 3;
sigma = 0.5;  % average & standard deviation
x = mu + sigma*[-3: -1, 1: 3];
yf = normcdf(x, mu, sigma);  % Vantage point----English
P = [yf(4)-yf(3),  yf(5)-yf(2), yf(6)-yf(1)];  % Calc shadow area
xd = 1: 0.1: 5;
yd = normpdf(xd, mu, sigma);
clf
for k = 1:3
  % -------Calculation for Filling Shadow Area-------
  xx = x(4-k): sigma/10: x(3+k);  % [3,4;2,5;,1,6]
  yy = normpdf(xx, mu, sigma);
  % -------End of This Shadow-Filling Calculat-------
  subplot(3, 1, k)
  plot(xd, yd, 'b')  % plot
  hold on
  fill([x(4-k),xx,x(3+k)], [0,yy,0], 'g')  % fill, a great command
  hold off
  if (k < 2)  % In this case, k can only be 1
    text(3.8, 0.6, '[{\mu}-{\sigma}, {\mu}+{\sigma}]')
  else
    kk = int2str(k);
    text(3.8, 0.6, ['[{\mu}-',kk,'{\sigma},{\mu}+',kk,'{\sigma}]'])
  end
  text(2.8, 0.3, num2str(P(k)))
  shg
end
xlabel('x')
shg




% Comment: For programs like this, you should bite it with the
% help of textbooks, and if necessary, great Professors. Do never
% be afraid of asking for help. After all, I'm a genius in this
% field----social engineering.

% Comment: This is a GREAT example. Review those codes more
% often; bet you will learn something from it.

% Comment: Keep being a master of language and I bet I SHALL
% benefit even more from it. Language as a means of communication.
% Aha, I am MYSELF and MYSELF only. Do not try to mock any other,
% but I could learn good traits from others. This is different.

% Comment: Well, then you can image what a fucking life Miss
% Liu would have after her marriage. Cute story, fucking story.