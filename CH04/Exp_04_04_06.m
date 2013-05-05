% 20130503 XY511 14:00
% AbrahamX @ NWPU
% The method of Least Squares

% Given (x,y) pairs
x0 = (0: 0.1: 1)';
y0 = [-0.447,1.978,3.11,5.25,5.02,4.66,4.01,4.58,3.45,5.35,9.22]';
m = length(x0);
n = 3;  % Order

% Construct matrix X
X = zeros(m, n+1);  % Must have a clear structure of X, when programming
for k = 1: n
  X(:, n-k+1) = (x0 .^ k);
end
X(:,n+1) = ones(m, 1);

% Calculate coefficients
aT = (X\y0)'


% Comment: Next---->Fuck chapter 4 and some other stuff till 
% explode. Keep moving, life is short, so just make the most of
% it, when you are awake.

% Comment: In page 196, ZYZhang has given us a 2-dimension
% explanation of the Least Square method. At times, review a concept
% both mathematically & visually would certainly help you learn more,
% learn better. What you love, is what you get.

%  Comment: Matrix is a good stuff. When you organize a lot of
% data, or things like linear equations in a MATRIX form, you'll
% regret not to have mastered Math to a deeper extent. Though 
% for a Ph.D student at an ordinary university, you may not be able
% to make huge innovation on ideas, but you ARE ABLE TO program
% HIGH QUALITY codes. And that's what the life I am leading.

% Yes, life is a bitch. So just fuck it till explode.
