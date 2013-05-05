% 20130502 XY511 15:30
% AbrahamX @ NWPU
% Inverse of Matrix, or Slash. It's a question?
% Nevermore, trust slash, trust your future.

% Construct a matrix with HUGE condition number
rng default
% condition number = 2e13, order = 300
A = gallery('randsvd', 300, 2e13, 2); 
x = ones(300, 1);  % specific result
b = A * x;
cond(A)  % verify condition number

% Inverse method, Holy Shit.
tic  % start Stopwatch Timer
xi = inv(A) * b;  % inverse (matrix) method
ti = toc  % stop Timer and see used time
eri = norm(x - xi)  % show error
rei = norm(A*xi - b)/norm(b)  % relative error

% Left slash will let you know the EFFICIENCY
tic;
xd = A\b;
td = toc  % time used
erd = norm(x - xd)
red = norm(A*xd - b)/norm(b)

% Compare relative error, and you'll be shocked
RELATIVE = rei/red  


% Comment: Recommended reading---->Hackers and Painters. A great book.

% Comment: I am a bachelor, that's a sad fact. Anyhow, I have to
% make a living before I could find the GIRL to fuck. Have to 
% support myself first.
