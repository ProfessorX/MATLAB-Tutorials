% 20130507 XY511 11:05
% AbrahamX @ NWPU
% Just another example on Movie

% Make a movie
clf;
x = 3 * pi * (-1: 0.05: 1);
y = x;
[X, Y] = meshgrid(x, y);
R = sqrt(X.^2 + Y.^2) + eps;  % Math works
Z = sin(R) ./ R;

% Plot
h = surf(X, Y, Z);  % h is the handle, as you can see in other programming lan
colormap(jet)
axis off
n = 12;
mmm = moviein(n);  % They say the New version does not have to do so.
for i = 1: n
  rotate(h, [0,0,1], 25);  % Ask HELP for more info
  mmm(:, i) = getframe;
end
close

% Play the movie
shg;
axis off
movie(mmm, 5, 12)  % 12 frames/second, play for 5 times



% Comment: Bu Zhe Teng is just a slogan. Well, in practice or industry
% like Software Engineering, Zhe Teng is the essence, either for the 
% choice of Programming Language, which is the toolkit of an Software
% Engineer, or the Debugging process, which would take up most of his/her
% life. The long but not torturing road, keep moving.