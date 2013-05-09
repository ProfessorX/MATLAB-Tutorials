% 20130509 XY511 12:10
% AbrahamX @ NWPU
% Just another example on Simulink & MATLAB Interaction
[A,B,C,D] = linmod('Exp_07_01_02');  % Obtain the space state function
STF = tf(minreal(ss(A,B,C,D)));  % Ask HELP for more
STF
[Num, Den] = tfdata(STF);  % Obtain the num & denum
Num{:}
Den{:}


% Plot, to be finished later...
t0 = (0: 0.1: 5)';
[y, t] = step(STF, t0);
plot(t, y, 'LineWidth', 3)
grid on
axis([0, 5, 0, 0.4])
xlabel('t')
ylabel('y')

