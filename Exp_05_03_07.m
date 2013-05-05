% 20130505 XY511 22:48
% AbrahamX @ NWPU
% How to HOLLOW a figure with the help of NaN

P = peaks(30);  % Peaks would be a useful function, ask HELP for more

% Some other parts could be set as NaN, try and see results
P(18:20, 9:15) = NaN;  % Fun with flags? Nope, fun with figures & numbers.
surfc(P)
colormap(hot)
light('Position', [50, -10, 5])
material([0.9, 0.9, 0.6, 15, 0.4])
grid off
box on

