% 20130507 XY511 16:45
% AbrahamX @ NWPU
% Just another program on Loops...
% Generate a magic square according to the conditions specified.
function [A,n] = Exp_06_01_05_A(n)
% Exp_06_01_05_A    Generate magic squares whose orderis divisible by 4
% A    A is the expression (or mark if you wish) of the Magic square
% n    n is the order of this magic square
% clear;
% clc;

while 1  % Loop till condition is satisfied
  if mod(n, 4) == 0
    break  % Find it! We've found it!!!
  else
    n = input('Please input the order divisible by 4! n = ');  % Holy!
  end
end  % End of the fucking loop, validating n.

G = logical(eye(4,4) +rot90(eye(4,4)));  % An interesting matrix
m = n/4;
K = repmat(G, m, m);  
N = n^2;
% Magic Squares, a simple algorithm
A = reshape(1:N, n, n);
A(K) = N - A(K) + 1;  % Here's the algorithm for constructing Magic Squares

