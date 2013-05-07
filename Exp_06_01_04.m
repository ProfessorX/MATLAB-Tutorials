% 20130507 XY511 15:35
% AbrahamX @ NWPU
% Just another example on While
function [S,N] = Exp_06_01_04(epsilon)
% [S,N] = Exp_06_01_04(epsilon)
%     Calculate the sum of a special series S = ... (see below)
% S = 1 + 1/(1+2) + ... + 1/(1+2+3+...+N)
% S   Sum of a special series
% N   Ehe minimun among all numbers to have 1/sum(1:N) < epsilon
% epsilon Pre-set (user-defined) accuracy

% Initialization
k = 0;
s = 0;
d = inf;
S = 0;

% Loop
while (d > epsilon)
  k = k+1;  % I'm not sure whether the i++ could be used here, or not
  s = s+k;
  d = 1/s;
  S = S+d;
end
N = k;
  
  
  
  
  
  
  
  % Comment: Yes, when people begin to have a clear idea of 
  % Mathematical Modeling, the world would change, at relatively a 
  % faster speed. For present days and aged man like me, Programming
  % is more than a skill; It's a way to make a living.
  
  