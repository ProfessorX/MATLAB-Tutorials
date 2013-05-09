% 20130507 XY511 17:00
% AbrahamX @ NWPU
% This is a program designed to verify the codes in prorgam
% Exp_06_01_05_A.m
% clear;
% clc;
n = 12;
[A,n] = Exp_06_01_05_A(n);
s0 = round(n * (n*n + 1)/2);  % Well, no translation could be found.
disp(['The standard sum of ', int2str(n), 'order magic square is', ...
  int2str(s0)]);
Ns0 = round(2 * (n+1));

B = A';
SC = sum(A);  % Sum of columns
SR = sum(B);  % Sum of rows
Sd = sum(diag(A));
Sdi = sum(diag(B));
LS = ([SC,SR,Sd,Sdi] == s0);  % Are the two equal or not? Judge magic or not~
NS = round(sum(LS));

% Conclusion
if NS == Ns0
  disp('           ')
  disp('Yes, A is a magic square. We have verified it!')
else
  disp('           ')  % Lazy to search for command for a "newline"
  disp('Oops, A is NOT a magic square! You program has bugs!')
end
