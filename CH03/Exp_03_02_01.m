% 20130425 XY511 12:20
% 20130425 XY511 19:45
% AbrahamX @ NWPU
% #################################################
% Next---->Learning Numerical Computing & Programming
% in MATLAB.
% #################################################


% Lay a strong foundation in ANY field is the First
% and Most Important step. So you may choose to be a 
% letter B at any other time, nevertheless, PAY CLOSE
% ATTENTION to the ABCs of any field. Without them, you
% can do nothing. You would be only a pig raiser.


% #####################################################
% This afternoon we will learn the basics of Matrix & Vector
% computing, and put those stuff into practice. 200% attention
% is required. Building my foundation, and those following codes
% & problems SHALL be easy.
% #####################################################

% Multiply two/more matrix. Tranditional & Modern Approach.
% Tranditional Approach.
clear  % clear memory
rng('default')
A = rand(2, 4);  % Random number generator, 2 by 4
B = rand(4, 3);  % Please call us matrix.
C1 = zeros(size(A, 1), size(B, 2));  % Pre-allocate memory
for ii = 1: size(A, 1)
  for jj = 1: size(B, 2)
    for k = 1: size(A, 2)
      C1(ii, jj) = C1(ii, jj) + A(ii, k)*B(k, jj);  % Definition of Multip
    end
  end
end  % End of this TRIPLE loop.
C1

% Modern Approach
C2 = A * B  % Well, a cozy & easy way, why not take it?

C1_C2 = norm(C1- C2)  % vector & matrix norms



% Comment: As modern prorgammers, though as times you use the tranditional
% way to please yourself. Saving the time & energy to take exercise, and 
% review what you have learned is more practical.
% More: Comparing two matrix by calling function "norm".


