% 20130424 XY511 09:50
% AbrahamX @ NWPU
% Solve average linear equations
S = solve('u*y^2 + v*z + w = 0', 'y + z + w = 0', 'y', 'z')
disp('S.y')
disp(S.y)
disp('S.z')
disp(S.z)

% List several similar approach
% #############################
S = solve('u*y^2+v*z+w=0','y+z+w=0','z','y')  % sequence has NO effect
S = solve('u*y^2+v*z+w','y+z+w','z','y')

% Another
% #############################
syms y z u v w
S = solve(u*y^2+v*z+w,y+z+w,y,z)

% Another
% #############################
% WARNING: the sequence for y & z here is VERY IMPORTANT.
% Once change the sequence in [y, z], the result would be different
[y, z] = solve('u*y^2 + v*z + w = 0', 'y + z + w = 0', 'y', 'z')