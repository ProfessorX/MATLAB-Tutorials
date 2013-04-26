% 20130426 XY511 21:15
% AbrahamX @ NWPU
% Accessing & Using NaNs. 
% Introducing command "find", an amazing command.

% Construct a two-dimensioned matrix with Nan in it
rng('default')
R = rand(2, 5);
R(1, 5) = NaN;
R(2, 3) = NaN;

LR = isnan(R)  % Judge
% "find" where NaNs are
si = find(LR)
[ri, ci] = ind2sub(size(R), si)  % Index to Subscripts
[rj, cj] = find(LR)  % should have the same result as above

disp('Location for NaNs in Matrix R is:')
disp(['Index format: # ', int2str(si(1)), ' and ', ...
  int2str(si(2)), ' element'])

% Comment: To tell whether an element is "NaN", say element E,
% you can NOT use "E == NaN" (after all, it's not C++). What you
% can and can only trust is----> isnan(). 


% Comment: As a programmer, merely knowing how to read
% and edit others' codes is never enough. Things like 
% data structure & algorithms will undoubtedly have GREAT
% impact on your thinking, thus reflecting on your writings.
