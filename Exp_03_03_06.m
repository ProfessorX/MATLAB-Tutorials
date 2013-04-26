% 20130426 XY511 18:00
% 20130426 XY511 20:00
% AbrahamX @ NWPU
% Addressing & Accessing, Two-Dimension Array
% What has not changed shall remain for some time.
clear
A = [1:3:16; 2:3:17; 3:3:18]
Ass1 = A(2, 3)

r = [2, 3];  % Row, the 2nd & 3rd one.
c = [1, 5];  % Column, the 1st & 5th
As22 = A(r, c)  % Sub-Arrray, condition: r=2|3, c=1|5

As26 = A([1,3], :)

Ais1 = A(8)  % Single Index accessing
ind = [1, 3, 18];  % the #1,3,18 element

Ai1r = A(ind)  % Output is row array
Ai1c = A(ind')  % Output should be column array

A(r,c) = zeros(2,2)  % set as zero
A([1, end]) = -A([1, end])  % set negative

L = (A <= 0)  % L has same dimension as A
AL = A(L)  % L could be viewed "logical", so...
% According to the LOGIC, get corresponding element
A(L) = NaN


% Comment: Using "Single Index" accessing method, it could
% be much more smart; Anyhow, it's more complicated.
