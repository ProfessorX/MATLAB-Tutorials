% 20130423 XY511 10:40
% AbrahamX @ NWPU
% Same stimulus in 02_05_06,
% do convolution with laplace transform
syms s 
yt = ilaplace(laplace(ut,t,s) * laplace(ht,t,s), s, t);
yt = simple(yt)

% Review: Programming could be a lot of fun as long as
% you have the know-how. It's now just playing with codes
% themselves, it's playing with your brain, your mind power.
% Commented by Abraham Xiao, Harmony Research Center.

% Business is business.