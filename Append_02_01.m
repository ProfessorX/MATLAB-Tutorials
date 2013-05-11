% 20130510 XY511 15:30
% AbrahamX @ NWPU
% Just another example on cell array
clear
C_str = 'Just another example on creating cell arrays.';
R = reshape(1:9, 3, 3);  % A 3-by-3 real-number matrix
Cn = [1+2i];  % Complex scalar
S_sym = sym('sin(-3*t) *exp(-t)');  % Sybmolic function

% One (direct) way to creat cell arrays.
B{1,1} = C_str;
B{1,2} = R;
B{2,1} = Cn;
B{2,2} = S_sym;

% Call of cell elements
a = B(1,2)
class(a)

% Call of contents of cell elements
b = B{1,2}  % Well, fuck the saying that white horse is NOT a horse
class(b)


% Comment: To optimize, MATLAB will guide you step by step, from
% pre-allocation to definition. Shortly speaking, use "doc cell" for 
% more information.










% Comment: Having fun at certain times would do me good. Nevertheless,
% abandon yourself into fucing video games till explode will, DO A LOT
% OF HARM. Time to compose my thesis, keep moving.