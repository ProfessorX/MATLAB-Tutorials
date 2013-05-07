% 20130507 XY511 16:40
% AbrahamX @ NWPU
% This program gives you the Symbolic way to do the same job.
syms k n N
SINF = limit(symsum(1/symsum(k,1,n),n,1,N),N,inf)

N = 141;
SN = vpa(symsum(1/symsum(k,1,n),n,1,N))