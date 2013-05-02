% 20130502 XY511 10:10
% AbrahamX @ NWPU
% Rank, Trace & Determinant
A = reshape(1:9, 3, 3)
r= rank(A)
d3= det(A)
d2 = det(A(1:2, 1:2))
t = trace(A)