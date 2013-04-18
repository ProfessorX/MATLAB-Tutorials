% 20130418 XY511 23:05
% AbrahamX @ NWPU
% Are you a loser? Are you a sucker?
clear all
clc
TL1 = evalin(symengine, 'mtaylor(sin(x^2 + y), [x,y], 8)')
pretty(TL1)
% find the class
class(TL1)