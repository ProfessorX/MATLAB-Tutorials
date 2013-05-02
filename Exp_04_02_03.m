% 20130502 XY511 11:40
% AbrahamX @ NWPU
% Life is a bitch. So just fuck it, till explode.
% Transform & Eigenvalue of Matrices.
A = magic(4)  % Magic matrix. Full of magics...
[R, ci] = rref(A)

% length of ci is the [RANK] of matrix A
r_A = length(ci)  % Recommended----> Use rand() instead
rank_A = rank(A)

% Verifying output R of command "rref"
aa = A(:, 1:3) * R(1:3, 4)  % Linear combination
err = norm(A(:,4) - aa)  % Is aa equals to A(:, 4)

