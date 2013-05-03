% 20130503 XY511 11:01
% AbrahamX @ NWPU
% Construct a polynomial, given roots
R = [-0.5, -0.3+0.4*1i, -0.3-0.4*1i];  % Array of roots
P = poly(R)  % Just ONE line of code
PR = real(P)  % Find real part of polynomial P
PPR = poly2str(PR, 'x')  % x is the transform variable