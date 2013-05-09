% 20130507 XY511 22:00
% AbrahamX @ NWPU
% Just another example on Function Handle in MATLAB 
% Certainly will remind you of the good old days fucking C/C++,
% TILL EXPLODE. Keep moving, keep acting as if you are NOT a 
% software engineer.
hm = @magic

class(hm)

isa(hm, 'function_handle')

CC = functions(hm)

M1 = hm(4)

M2 = feval(hm, 4)  % Would have the same effect as the line of code above