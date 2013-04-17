% 20130417 XY511 16:16
% InfoSec, School of Automation
% Northwestern Polytechnic University
% Life is a bitch. And SHE fucked me.
AR = [1, 3; 2, 4];
AI = [5, 7; 6, 8];
A = AR - AI * 1i  % Now it's a complex array

% Real and imaginary part of Array "A"
A_real = real(A)
A_image = imag(A)

% Using LOOP to calculate norm and angle
for m = 1: 2
  for n = 1: 2
    Am1(m, n) = abs(A(m, n));
    Aa1(m, n) = angle(A(m, n)) * 180/pi;  % Degree as the unit
  end
end
% Show those clumsy stuff......Life as a bitch
Am1, Aa1

% May be a more direct way to do this!
Am2 = abs(A)
Aa2 = angle(A) * 180/pi


  