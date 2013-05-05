% 20130501 XY511 20:30
% AbrahamX @ NWPU
% Well, a long time before programming. Get down to my codes,
% to my projects. Whatever university I would be, do not let
% myself down, that's very important.

% Use of "integral" in a complicated situation
F = @(z)(2*z-1) ./ (z .* (z-1));  % Construct a function.
Path = [2+1i, -1+1i, -1-1i, 2-1i, 2+1i];  % Construct path

sf = integral(F, 2+1i, 2+1i, 'Waypoints', Path)


% Comment: Path could be replaced by [-1+1i, -1-1i, 2-1i],
% "integral" is a new but extremely powerful command. Always
% remember to ask "HELP".