% 20130503 XY511 09:15
% AbrahamX @ NWPU
% Normal Distribution and "hist" to plot
mu = 2;
s = 0.5;
rng(22, 'v5normal')  % reset the generator
x = randn(1000, 1);
y = s*x + mu;  % As the question
z = s * (x+mu);  % Avg=1, Std = 0.5

% Plot
subplot(311)
histfit(x)  % Histogram with a distribution fit
axis([-5, 5, 0, 100])
ylabel('x')
subplot(312)
histfit(y)
axis([-5, 5, 0, 100])
ylabel('y')
subplot(313)
histfit(z)
axis([-5, 5, 0, 100])
ylabel('z')


% Comment: There is a more direct way, as follows.
% -------Mommy
% rng(22, 'v5normal')
% yy = normrnd(mu, s, 1000, 1)
% -------Daddy
% Thus you will get the result as you wish.


% Comment: Math is Fun. And if you hate to admit this for as long
% as you want, you won't be able to fuck Math till explode, then,
% for as long as the MATH want. Aha, math works, with the help of 
% programming, you're going to embrace a bright future.