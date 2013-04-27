% 20130422 XY511 20:50
% AbrahamX @ NWPU
% Life is a bitch. Isn't it...

% Using heaviside more properly...Aha, bitch.
clear 
syms t x w
ft = exp(-(t-x)) * heaviside(t-x);
gt = exp(-(t-x))  % for comparison

% Full call of command "fourier"
F1 = simple(fourier(ft, t, w))
G1 = simple(fourier(gt, t, w))  % You'll find them diff.

% Incomplete call of "fourier"
F2 = simple(fourier(ft, t))  % Program is not so smart, yet.
F3 = simple(fourier(ft))  % Holy Shit. 

% Pay more attention to the VALUE of Heaviside function.