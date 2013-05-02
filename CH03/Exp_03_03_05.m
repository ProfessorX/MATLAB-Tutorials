% 20130426 XY511 17:55
% AbrahamX @ NWPU
% Generating standard matrix, via MATLAB commands

% -------Demo Demo-------
ones(2, 4)  % 2 by 4, all "1"

rng(0, 'v5normal')
randn(2, 3)  % matrix with random numbers, normal distribution

D = eye(3)  % Unit matrix, 3 by 3

Diag_D = diag(D)  % Diagonals of matrix

diag(diag(D))

randsrc(3, 20, [-3, -1, 1, 3], 1)  % For those stuff, read HELP in English

