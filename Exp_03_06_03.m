% 20130427 XY511 12:10
% AbrahamX @ NWPU
% MATLAB is a great tool. But I am not sure I will use this
% for ever. When in trouble with math, this is helpful.

% Decided to use "norm", making it more visible.
rng default  % Random number generator
A = randn(3,3) + 1j * randn(3,3);  % Complex matrix

% -------
A';
A.';  % Compare
Norm1 = norm(A' - A.')

% -------
conj(A);
conj(A.');
Norm2 = norm(conj(A) - conj(A.'))

% -------
ANS1 = A * A';
ANS2 = A .* A';
ANS3 = A .* conj(A);  % Run line by line to display...
Norm3 = norm(ANS1 - ANS2)
Norm4 = norm(ANS2 - ANS3)
Norm5 = norm(ANS1 - ANS3)  % Seems they are different from each other


