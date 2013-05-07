% 20130507 XY511 14:30
% AbrahamX @ NWPU
% Just another example on If-Else-End
function y = Exp_06_01_01(x)
% y = Exp_06_01_01    Function calculate of Example 6.1-1

n = length(x);
for k = 1: n
  if x(k) < -1
    y(k) = x(k);
  elseif x(k) >=1
    y(k) = exp(1-x(k));
  else
    y(k) = x(k)^3;
  end
end
