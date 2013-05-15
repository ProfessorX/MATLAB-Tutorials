% 20130515 XY511 21:50
% AbrahamX @ NWPU
% Fibonnaci, the most tranditional approach.
F = zeros(1, 20);  % Pre-allocation
F(1) = 0;
F(2) = 1;
for i = 3: 20
  F(i) = F(i-1) + F(i-2);
end  % See how slow the fucking process would be.

% Plot
plot(1:19, F(1:19)./F(2:20), 'o')
hold on
xlabel('n')
plot(1:19, F(1:19)./F(2:20), '-')
legend('Ratio of terms f_{n-1}/f_n')
plot([0, 20], (sqrt(5)-1)/2*[1,1], '--')












% Comment: The Fibonnaci sequence starts off with the number 0 and
% 1, then succeeding terms are the sum of its two immediate predecessors.
