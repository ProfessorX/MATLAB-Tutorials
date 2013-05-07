% 20130505 XY511 16:45
% AbrahamX @ NWPU
% Integrated example. Step response of Two-Order Linear System.

clf;  % Clear figuer, or you can start a new figure  
t = 6 * pi * (0:100)/100;
y = 1 - exp(-0.3*t) .* cos(0.7 * t);
plot(t, y, 'r-', 'LineWidth', 3)
hold on
tt = t(abs(y-1)>0.05);  % Omit calling "find" in original code, sugg by MAT
ts = max(tt);  % Well, background in C++ Programming would help.
plot(ts, 0.95, 'bo', 'MarkerSize', 10)  % The fucking point, diff names...
hold off
axis([-inf, 6*pi, 0.6, inf])  % Control the axis

% Decorations and more
set(gca, 'Xtick', [2*pi, 4*pi, 6*pi], 'Ytick', [0.95, 1, 1.05, max(y)])
set(gca, 'XtickLabel', {'2*pi';'4*pi';'6*pi'})
set(gca, 'YtickLabel', {'0.95';'1';'1.05';'max(y)'})
grid on
text(13.5, 1.2, '\fontsize{12}{\alpha} = 0.3')
text(13.5, 1.1, '\fontsize{12}{\omega} = 0.7')

% Cell String...Fuck me
cell_string{1} = '\fontsize{12}\uparrow';
cell_string{2} = '\fontsize{16} \fontname{Consolas}Calm Point';
cell_string{3} = '\fontsize{6}  ';
cell_string{4} = ['\fontsize{14}\rmt_{s} = ' num2str(ts)];
text(ts, 0.85,cell_string,'Color','b','HorizontalAlignment','Center')
title('\fontsize{14}\it y = 1 - e^{-\alpha t}cos{\omegat}')
xlabel('\fontsize{14} \bft \rightarrow')  % Mark for x-coord
ylabel('\fontsize{14} \bfy \rightarrow')  % Mark for y-coord







% Comment: Leave behind what others are thinking of you. Fuck those
% stuffs by myself. I have seen a lot, and have made those predictions,
% suggestions as well. I, Abraham.