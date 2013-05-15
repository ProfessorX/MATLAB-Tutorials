% 20130515 XY511 22:22
% AbrahamX @ NWPU
S = zeros(100, 1);
S(20) = sum(1./(1:20) .^ 2);

for n = 21: 100
  S(n) = S(n-1) + 1/(n^2);
end

clf;
plot(1:100, S, '.', [20, 100], [1,1]*(pi^2)/6, '-')
axis([20, 100, 1.5, 1.7])








% Comment: To tell the truth, you REALLY do not have to use
% SO MUCH loops in MATLAB. You should be familiar to some degree
% to MATRIX before programming MATLAB.