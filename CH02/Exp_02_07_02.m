% 20130424 XY511 11:22
% AbrahamX @ NWPU
% Solving a transfer function problem is just
% to solve "symbolic algebra equations". So instead of
% fuckingly working them out by hand, the MATLAB wiil serve
% as a great computation helping hand.

% The data is from another form----signal-flow graph
syms G1 G2 G3 G4 H1 H2 H3
A = [  0, 0, 0, 0, -H3;
      G1, 0, 0, 0, -H1;
       0,G2, 0, 0,  H2;
       0, 0,G3, 0,   0;
       0, 0, 0,G4,   0]
     
b = [1, 0, 0, 0, 0]';
c = [0, 0, 0, 0, 1];

% Solve it,the general formula is the same
Y2Ub = c * ((eye(size(A)) - A)\b);  % One line, one TF (transfer fun)
disp([blanks(5), 'Transfer Function Y2Ub is:'])
pretty(Y2Ub)

% Give G1--H3 certain number, and work out a concrete Y2Ub
syms s 
Sblock = {100/(s+10), 1/(s+1), (s+1)/(s^2+4*s+4),(s+1)/(s+6),...
  (2*s+12)/(s+1),(s+1)/(s+2),1};  % a concrete TF
ww = subs(Y2Ub, {G1,G2,G3,G4,H1,H2,H3}, Sblock);  % substitute
Y2Uc = simple(ww);
[NN,DD] = numden(Y2Uc);  % numerator & denumerator
NN = expand(NN);
disp([blanks(11)])  % should be a "newline" command, I do not know.
disp('Concreting those parameters, and we will get: ')
pretty(NN/DD)


