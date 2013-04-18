clear  % To gurantee the results are REPRODUCIBLE
a = sin(3/10)  % DOUBLE
sa = sym('sin(3/10)') 
vpa(sa - a, 40)  % Calculate the error

% This representation shall never be used,
% Unless you would like to be fucked.
sa1 = sym('sin(0.3)')
sa2 = sym('sin(3e - 1)')
d1 = vpa(sa - sa1, 40)  % Life is a bitch, why not fuck it, for FREE.

% Now let's find specific data type.
whos

% Remark: You should not use 
% Decimal numerical system or
% Scientific numerical system
% when doing with symbolic calculation.
