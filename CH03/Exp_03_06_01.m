% 20130427 XY511 11:40
% AbrahamX @ NWPU
% These are the exercises. I've got no ANS.
% So I just took as sort of Test-Myself...
% Simple codes to help review arithmetic rules in MATLAB
A = magic(3);
B = [1,2,1; 3,4,3; 5,6,7];
C = reshape(1:6,3, 2);

A*B
B*A  % Are they the same?

A\B
B/A  % Are they the same?

B(:,[1,2]) .* C
C .* B(:,[1,2])  % Are they the same?

A\A
A .\ A  % Should they be the same?

A\eye(3)
inv(A)  % Well, you could add "norm(XX, YY)" to compare










% Comment: Set the target for yourself. Using the GTD and some
% well-verified tools. Matser your time, master your future.
% Next-->Chapter 4, Numerical Computing. That's EXACTLY what
% the computer would do for you. Numerical, instead of the tranditional
% logical & symbolic reasoning. Have to admit they are useful, but num-
% merical is the future, a big trend. Read a lot, and do Reflections.