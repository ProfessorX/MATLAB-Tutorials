% 20130507 XY511 15:20
% AbrahamX @ NWPU
% Just another example on For and While (Loops...Whoops!~!)
% The creation of Hilbert Matrix

% Approach #1
K = 5;
% Pre-Allocating
A = zeros(K, K);  % Highly recommende, but have to have KNOW-HOW!
for m = 1: K
  for n = 1: K
    A(m, n) = 1/(m+n-1);
  end
end

format rat
A  % For displaying purpose
format

% Approach #2
% Ask HELP & Wikipedia for more info about Pre-Allocating
clear
tic  % Tick...Tock...This is the stopwatch, as you can hear.
K = 1000;
for m = 1: K
  for n = 1: K
    A1(m, n) = 1/(m+n-1);
  end
end
t1 = toc

% Approach #3
% Simply a comparison, with Pre-Allocation
tic
K = 1000;
A2 = zeros(K, K);  % Pre-Allocation
for m = 1: K
  for n = 1: K
    A2(m, n) = 1/(m+n-1);  % There steps will remind you of
  end  % the good, old days studying the C/C++
end
t2 = toc  % For compare only


% Approach #4
% Vectorizing Programming, of HUGE influence
% And this way of programing / thinking will open eyes for you!!!
% Get some more info about List-Programming in the future.
tic
N = 1000;
n= repmat(1:N, N, 1);  % Here need to ask HELP
m = n';
A3 = 1 ./ (n+m-1);  % Vectorizing Programming
t3 = toc










% Comment: There's the saying that to make a long story short.
% And in doing/carrying out scientific research, for many times
% you'll encounter the situation to make an old story short, or 
% to update an old theory, old paper---->Why? 'Cause that's the
% Research & Development.