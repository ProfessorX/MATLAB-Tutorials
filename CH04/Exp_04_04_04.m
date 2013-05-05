% 20130503 XY511 11:05
% AbrahamX @ NWPU
% Caylay-Hamilton Theory, compare polyval & polyvalm

% Polyomial & A 2-by-2 array
clear
p = [1, 2, 3];  % Coefficient array
Polynomial = poly2str(p, 'x')  % Display the polynomial
X = [1,2; 3,4]

% Find the essence of polyval
va = X.^2 + 2*X + 3  % Poly of arrays
Va = polyval(p, X)

% Essence of polyvalm
vm= X^2 + 2*X + 3*eye(2)
Vm = polyvalm(p, X)

% Verificationof Caylay-Hamilton Theory
cp = poly(X);
poly2str(cp, 'x')
cpXa = polyval(cp, X)
cpX = polyvalm(cp, X)


% Comment: You should pay close attention to va & vm. See how
% they are constructed and tell the TINY difference.

% Caylay-Hamilton Theory: Any matrix shal satisfy his own 
% characteristic polynomial equation. (From Google Translate...)

% Comment: Excerpt from MATLAB Help. 
% Y = polyvalm(p,X) evaluates a polynomial in a matrix sense. This 
% is the same thing as substituting matrix  in the polynoial p.
% Polynomial p is a vector whose element are the coefficients of a
% polynomial in descending powers, and X must be a SQUARE matrix.

% Here follows the example in MATLAB Help. (Slight modification)
% -------We are the undead-------
% X = pascal(4)
% p = ploy(X)
% PolyVal = polyval(p, X)
% PolyValM = polyvalm(p, X)
% -------There is a zombie on your lawn-------
%


