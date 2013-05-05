% 20130503 XY511 10:30
% AbrahamX @ NWPU
% Eigvalue and Eig-Poly within Matrix

% Eig Polynomial of a sample matrix
format short
A = [11,12,13; 14,15,16; 17,18,19];  % 3-by-3 sample matrix
PA = poly(A)
PPA = poly2str(PA, 's')  % A more tranditional way.


% Eigenvalue & Eig-Poly
s = eig(A)
r = roots(PA)  % Well, according to the theory, s&r should be the same

% Adjoint matrix
n = length(PA);  % Length of coefficient
AA = diag(ones(1, n-2, class(PA)), -1);
AA(1, :) = -PA(2:n) / PA(1);  % Adjoint matrix
AA  % In this case, A&AA should be similar to each other
sr = eig(AA)




% Comment: When in doubt, please remember that YOU have a good 
% command of the English language, thus there are so many people
% to whom you can turn for help.