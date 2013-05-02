% 20130427 XY511 11:30
% AbrahamX @ NWPU
% Those postgraduates in China. Aha, I've got
% nothing more to say. Study by myself, and to do 
% this you should set certain targets...
% Without a practical goal, what will you achieve?
% NOTHING.

% Sinewave plotting. A logic array approach
clear
t = linspace(0, 3*pi, 500);
y = sin(t);  % Generate full sinewave

% Start modifying from independent variable-->t
z1 = ((t<pi) | (t>2*pi)) .* y;  % Removing negative parts
w = (t>pi/3 & t<2*pi/3) + (t>7*pi/3 & t<8*pi/3);  % Logical!!!
wn = ~w;
z2 = w * sin(pi/3) + wn .* z1;  % Math representation!

% Plot
subplot(411)
plot(t, y, ':r')
axis([0, 10, -1.5, 1.5])
ylabel('y')
grid on
subplot(412)
plot(t, z1, ':r')
axis([0, 10, -0.2, 1.5])
ylabel('z1')
subplot(413)
plot(t, wn, ':r')
axis([0, 10, -0.2, 1.5])
ylabel('wn')
subplot(414)
plot(t, z2, '-b')
axis([0, 10, -0.2, 1.5])
ylabel('z2')
xlabel('t')


% Comment: 0 for FALSE & 1 for TRUE. Well, Mathematics is a 
% magical stuff, isn't it? Aha, gladly accept your destiny as
% a software engineer in the beginning. Maybe later you satrt
% your own start up and FUCK THE MARKET TILL explode. Who knows~

% Comment: All in all, a good command of English will better your
% communication with those foreigners, and at the same time, it
% will undoubtedly faster your speed in reading the FUCKING HELP.