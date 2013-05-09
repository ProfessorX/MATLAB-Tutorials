% 20130507 XY511 15:00
% AbrahamX @ NWPU
% Just another example on Switch-Case
clear;
% MAT suggests me to do the Pre-Allocating. So I did.
% a = cell(10);  ----> Then it CRASHED!!!
% b = a;
% c = a;
% d = a;
for k = 1: 10
  a(k) = {89+k};
  b(k) = {79+k};
  c(k) = {69+k};
  d{k} = {59+k};
end  % Initialization. Well, have to admit its convenience.

c = [d, c];
% A small set of samples, Stu.Name, Stu.Grade
A = cell(3, 5);  % Pre-Allocate. This is of great importance, as with speed.

% As with the Initailization of each part, you can CLEARLY see
% the difference---->The braces are different, across the Equal Sign
A(1, :) = {'Jack', 'Marry', 'Peter', 'Rose', 'Tom'};  
A(2, :) = {72, 83, 56, 94, 100};  % Notice the DIFFERENCE!

% Time to teach you the use of Switch-Case
for k = 1: 5
  switch A{2, k}
    case 100  % 100 is a scalar, see the difference below.
      r = 'Great';  
    case a  % a and the following are cell arrays! Math works.
      r = 'Good';  
    case b
      r = 'Okay';
    case c
      r = 'Pass';
    otherwise
      r = 'Fail';
  end
  A(3, k) = {r};  % Well, I've told you MATLAB is a powerful tool.
end

% Display "A" to see how's it going.
A