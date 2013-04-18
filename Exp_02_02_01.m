% 20130417 XY511 23:30
% AbrahamX @ NWPU
reset(symengine)

sa = sym('1/3 + sqrt(2)');

% Calc this in numerical method
digits
format long
a = 1/3 + sqrt(2)
sa_Plus_a = vpa(sa+a, 20)
sa_Minus_a = vpa(sa-a, 20)  % You'll find the result amazing.

% digits and vpa, have diff impact
% You'll see from the output.
sa32 = vpa(sa)
digits(48)
sa5 = vpa(sa, 5)
sa48 = vpa(sa)