% 20130426 XY511 15:35
% AbrahamX @ NWPU
% Getting to know "Vectorized Programming"
% Additionally comparing trandition & vectorizing
% Programming. What makes you so proud as a software engineer?
clear
% Data from voltage measurement
V = [0.89, 1.20, 3.09, 4.27, 3.62, 7.71, 8.99, 7.92, 9.70, 10.41];
% Data from current measurement
I = [0.028,0.040,0.100,0.145,0.118,0.258,0.299,0.257,0.380,0.345];

% --------------Tranditional Programming, Sucks----------------------
L = length(V);  % length of array, for loop use
for k = 1: L
  r1(k) = V(k)/I(k)  % Calculate the resistance
end

% --------------Tranditional Programming, Calc Avg-------------------

sr = 0;
for k = 1: L  % Looooooop
  sr = sr + r1(k);  % Calc the sum...1st step
end
r1 = sr/L  % Calc average

% --------------Vectorized Programming, Oh yes, Oh God---------------
rL = V ./ I  % Just one line of COMMAND!
r2 = mean(rL)  % English is a good tool for you to read HELP

% Plot
V = sort(V);
I = sort(I)
stem(I, V)
xlabel('Current')
ylabel('Voltage')
title('\fontsize{14}Ohm Law')