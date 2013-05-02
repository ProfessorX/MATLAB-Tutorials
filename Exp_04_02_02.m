% 20130502 XY511 10:45
% AbrahamX @ NWPU
% Verifying some characteristics of Matrix

% format short  ----> You can remove this
rng('default')  % reset the random number generator
A = rand(3, 3);  % Probability theory.
B = rand(3, 3);  % Math works, math is the future.
C = rand(3, 4);
D = rand(4, 3);

% Property of trace
tAB = trace(A * B)
tBA = trace(B * A)
tCD = trace(C * D)
tDC = trace(D * C)  % See those numbers & compare

% Addition...
disp('NormtAB is the norm of (A*B - B*A)');
NormtAB = norm(A*B - B*A)
% NormtCD = norm(C*D - D*C), ERROR dimension does not agree!

% Determinant
d_A_B = det(A) * det(B)
dAB = det(A*B)
dBA = det(B*A)  % Compare those figures, and conclude

% When the order of two matrix does not agree, then
% det(C*D) will not match det(D*C). 
dCD = det(C*D)
dDC = det(D*C)  % (m*n), when m>n, it's ... See the result and conclude

% Comment: It's never too easy to be a software engineer. Anyhow,
% it's sort of the method to make a living in this world. Always
% remember what you have to do, and do it accordingly.
% Stay hungary, Stay foolish. Proudly fucking codes & myself.
