% 20130417 XY511 22:35
% AbrahamX @ NWPU
clear all
a = 1;
b = 2;
c = 3;
d = 4;  % Brothers and Sisters
Mn = [a, b; c, d]
Mc = '[a, b; c, d]'  % They are diff
Ms = sym(Mc)  % Sym matrix

% Size
SizeMn = size(Ms)
SizeMc = size(Mc)
SizeMs = size(Ms)  % They should be diff

% Class
CMn = class(Mn)
CMc = class(Mc)
CMs = class(Ms)

% Isa to judge their type
isa(Mn, 'double')
isa(Mc, 'char')
isa(Ms, 'sym')

% Who is your DADDY?
whos Mn Mc Ms  % Name Size Bytes Class and Attributes





