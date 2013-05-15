% 20130515 XY511 21:00
% AbrahamX @ NWPU
% Just another example in Linear Equations
x = [0.001 0.011 0.13 0.3 0.75]*1e-2;
A = [x' (x').^2]
b = [5 50 500 1000 2000];

% And the least square solution to this system is given by
k = A\b'
F = [-16.0*1e6 38.6*1e4 0];

r = poly(F)

plot(x, r, 'o')
hold on


% Comment: For this, to be fucked till explode. So cute.
% -------> To be finished later, when I review this in a few 
% months.