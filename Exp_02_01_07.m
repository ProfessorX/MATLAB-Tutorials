% 20130417 XY511 23:15
% AbrahamX @ NWPU
clear all  % Now the workspace is CLEAR
reset(symengine)  % Restart MuPAD engine
Da = 1.2;
Dw = 1/3;  % Double
syms sa sw sx sy sz
syms A B positive  
syms C real  % No restrictions, no square and circle

% Whos your daddy?
whos

% Assume you're a Ph.D.
assumptions

% Clear and find more about the world
clear A
who
assumptions  % "clear" has a limited function

syms B clear
who
assumptions  % You'll find some difference