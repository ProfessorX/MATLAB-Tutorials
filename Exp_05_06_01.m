% 20130504 XY511 12:10
% AbrahamX @ NWPU
% Two-Order Linear Systems
clc
clf
clear
% Initialization
t = (0: 0.05: 18)';
N = length(t);
zeta = 0.2: 0.2: 1.4;
L = length(zeta);
y = zeros(N, L);
hold on

% Plot
for k = 1: L  % Loop L times
  zk = zeta(k);
  beta = sqrt(abs(1-zk^2));
  % Conditions
  if (zk < 1)  % For zeta(k) < 1
    y = 1/beta * exp(-zk*t) .* sin(beta*t);
    plot(t, y, 'b')
    if (zk < 0.4)
      text(2.2, 0.63, '\zeta = 0.2')
    end
  elseif zk == 1
  % To be more accurate, use "eps"
    y = t .* exp(-t);
    plot(t, y, 'k', 'LineWidth', 2)  % Shall verify this, line by line
  else
    y = (exp(-(zk-beta)*t) - exp(-(zk+beta)*t))/(2*beta);
    plot(t, y, 'r')
    if (zk > 1.2)
      text(0.3, 0.14, '\zeta = 1.4')
    end
  end
end
text(10, 0.7, '\Delta\zeta = 0.2')
axis([0, 18, -0.4, 0.8])
hold off
box on
grid on