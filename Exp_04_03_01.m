% 20130502 XY511 17:25
% AbrahamX @ NWPU
% Binomial Distribution, example and graph
N = 100;  % number of trials
p = 0.5;  % probability of success
k = 0: N;  % number of event A happens

pdf = binopdf(k, N, p);  % Probability Density Function
cdf = binocdf(k, N, p);  % Cumulative Density Function

% Plot
h = plotyy(k, pdf, k, cdf);  % two y-coordinates
set(get(h(1),'Children'), 'Color', 'b', 'Marker', '.', ...
  'MarkerSize', 13)  % This teaches you how to config plotyy()
set(get(h(1), 'Ylabel'), 'String', 'pdf')
set(h(2), 'Ycolor', [1,0,0])
set(get(h(2),'Children'), 'Color', 'r', 'Marker', '+', ...
  'MarkerSize', 4)
set(get(h(2),'Ylabel'), 'String', 'cdf')
xlabel('k')
title(['Probability Density Function', ' and ', ...
  'Cumulative Density Function', ' with Binomial Distribution'])
grid on






% Comment: Do I really need SEX? Probably not. All I have to do is
% to concentrate on those projects given to me, and work out 
% quality projects, papers as well.

% Comment: Sex and the City. What a cute story...Aha.
% Sex, Fuck and the Stuffssss you will encounter in the future. 
% Really? Just a joke.