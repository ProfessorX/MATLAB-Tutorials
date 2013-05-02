% 20130502 XY511 21:40
% AbrahamX @ NWPU
% Global random number stream, random arrays, and 
% statistical analytics

% Random Number Generator
rng default  % Ask HELP for more info
GRS = rand(1, 25)

rng default  % reset, or the result will differ
r1 = randn(1, 5)  % Distribution: Normal

r2 = rand(1, 5)

r3 = randi([-3, 2], 1, 5)

r4 = exprnd(0.4, 1, 5)  % exponential distribution

st = rng;  % save for re-appearance
r5 = rand(1, 5)

% Since it's a GLOBAL random number generator, one config
% change GLOBALLY. So be careful.
rng(st)
rr5 = rand(1, 5)
Norm_rr5 = norm(r5 - rr5)  % Compare


% Comment: Some of the information followed may well have 
% huge impact on your future learning.
% To make a random number stream re-appear, the most common
% ways are:
% ----rng default. This reset the generator and all starts from 
% the beginning. Personally do not recommend.
% ----You generate a same seed for later use, save it. And when
% it's time to use it, type in: rng(sd)---->sd for seed.
% ----st = sng, save what the structure of the generator at this 
% specific time, and as above, type in: rng(st) to load it.