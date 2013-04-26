% 20130425 XY511 19:30
% 20130426 XY511 15:10
% AbrahamX @ NWPU
% Next---->Numerical computing using MATLAB
% Back & Reviewing codes in MATLAB.
% Strengthening the concept of Vector, Matrix &
% Array in your mind. These are the foundations of MATLAB Prog.

% Remark: Even in Zhiyong Zhang's book, there is one big thing:
% NO united Chinese/English translation. They use the Google Translate
% to name "ShuZu" in Chinese as Array in English. Totally different
% definition<-->as with the C programming language. Shall cause future 
% confusion if not corrected!----Abraham Xiao

% Comparing: Multiplication, Division & Power
Am = magic(3)  % magic matrix, 3-order
Aa = reshape(1:12, 3, 4)  % a 3*4 array
B = 2 * ones(3, 4)  % All "2" array

% Let the comparison begin.
Cm1 = Am * B  % matrix multiplication
Ca1 = Aa .* B  % array multiplication

Cm2 = Am \ B
Cm2i = inv(Am) * B  % Same result as above
Ca2L = Aa .\ B
Ca2R = B ./ Aa  % Should be the same result as above

% Powering
Cm3 = Am ^ 2  % whole matrix, IT'S just Am*Am*Am...
Ca3 = Aa .^ 2  % Each element

Ca4 = Aa .^ B

