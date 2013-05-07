% 20130507 XY511 11:18
% AbrahamX @ NWPU
% Just an integrated program of Visualization in MATLAB
function f = Exp_05_04_07(K, ki)
% Exp_05_04_07.m    Real-time demo, a red ball scrolls along closed helix
% Just playing the demo, use Exp_05_04_07(K), default K is (n/2).
% For playing & capturing pcitures at the same time, se Exp_05_04_07(K,Ki)
% K    Loop times for the movement of red ball, must be larger than 1
% ki   Indicate which moment to capture pictures, 1<= ki<= n
% f    Save the picture captured, and view it by image(f.cdata)

% Generate closed movement curve, in this case, helix
t1 = (0: 1000)/1000 * 10 * pi;
x1 = cos(t1);
y1 = sin(t1);
z1 = -t1;

t2 = (0: 10)/10;
x2 = x1(end) * (1-t2);
y2 = y1(end) * (1-t2);
z2 = z1(end) * ones(size(x2));

t3 = t2;
z3 = (1-t3) * z1(end);
x3 = zeros(size(z3));
y3 = x3;

t4 = t2;
x4 = t4;
y4 = zeros(size(x4));
z4 = y4;
x = [x1, x2, x3, x4];
n = length(x)

if nargin < 2  % There is no ki, set ki = n/2
  ki = fix(n/2);
end
y = [y1, y2, y3, y4];
z = [z1, z2, z3, z4];
shg

% Plot
plot3(x, y, z, 'Color', [1,0.6,0.4], 'LineWidth', 2.5)  % Helix
axis off

% Decorations, Color, MarkerSize, EraseMode
h = line('XData', x(1), 'YData', y(1), 'ZData', z(1), ...
  'Color', [1,0,0], 'Marker', '.', 'MarkerSize', 40, 'EraseMode', ...
  'xor');
KK = K * n;
text(-1, -0.85, -36, 'CountDown')  % Mark the countdown
KK = KK - 1;
htext = text(-1, -1, -40, int2str(KK));

% Move the red ball
i = 2;
j = 1;
while 1  % Loop, and stop it by hand......
  set(h, 'XData', x(i), 'YData', y(i), 'ZData', z(i));  % Real-Time position
  drawnow;  % Refresh
  pause(0.0005)  % Control the velocity
  i = i+1;
  KK = KK -1;
  set(htext, 'string', int2str(KK))  % Dynamic countdown
  if nargin==2 & nargout==1  % ShootMe, please.
    if (i==ki && j==1)
      f = getframe(gcf)
    end
    if i > n
      i = 1;
      j = j+1;
      if j > K
        break  % Jump out,please
      end
    end
  end
end


%% Directions
% A sample set of arguments to run this Demo, in command window
% -------
% shg
% K = 2;
% f= Exp_05_04_07(2, 450);
% -------
% To display the captured image, use
% image(f.data), axis off


%% Comment
% Well, you have to face the fate of being a software engineer for 
% some time. You could proudly name yourself as the Code Warrior.
% Fight for freedom, or die. Choose one.



