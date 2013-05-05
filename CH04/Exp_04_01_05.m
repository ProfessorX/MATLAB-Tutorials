% 20130427 XY511 18:00
% 20130429 XY511 10:40
% 20130501 XY511 20:30
% AbrahamX @ NWPU
% Learning how to use new command, "integral"
% Almost 3 days, aha. Should keep the role as a software
% engineer. Keep moving, keep fucking.

% Creating functions & Plot 
x = linspace(0.01, 1.2, 50);  % Array x, with 50 points
g1 = x .^ (-0.2);
g2 = x .^ 5;  % Two Functions
plot(x, g1, '-r.', x, g2, '-b*')
axis([0, 1.2, 0, 3])
legend('g_1(x)=1/x^{0.2}', 'g_2(x)=x^5', 'Location',...
  'North')
title(['x is located between [0,1], and folded by g_1(x)',...
  'and g_2(x)'])

% Integrating using anonymous function
% format long
G1 = @(x)x .^ (-0.2);  % .^ for arrays.
Q1 = integral(G1, 0, 1)
G2 = @(x)x .^ 5;
Q2 = integral(G2, 0, 1)
S12 = Q1 - Q2  % Area within the curve 

% Slightly modify this as an array function
G = @(x)x .^ [-0.2; 5];  % Combine two as an array
Q = integral(G, 0, 1, 'ArrayValued', true)  % Integrate
S = [1, -1] * Q

% Cala in SYM mode, final verification
syms t
Gsym = vpa(int(t .^ [-0.2; 5], 0, 1)); % 32 bit accuracy
Ssym = Gsym(1) - Gsym(2) 



% Comment: Relaxation could be at times. Working is inherented
% into my life. Keep moving, keep fucking. (Comments after some)
% relaxations.

% Comment: Consult "HELP" for more information. Always keep this
% in mind, that's why I had told you to be a better language learner
% than those fucking guys in NWPU. Oracle, Prophet...Cute.




