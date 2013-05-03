% 20130503 XY511 09:00
% AbrahamX @ NWPU
% Commands in statistical analysis
rng(0, 'v5normal')  % Reset generator
A = randn(1000, 4);  % Array(1000,4), normal distribution
AMAX = max(A)
AMIN = min(A)
CM = mean(A)
MA = mean(mean(A))  % Should be close to 0
S = std(A)  % Standard deviation
Var_Minus_Std = var(A) - S.^2  % Should be close to 0
C = cov(A)  % Covairance matrix
Diag_Minus_Var = diag(C)' - var(A)  % Should also be 0

p = corrcoef(A)
