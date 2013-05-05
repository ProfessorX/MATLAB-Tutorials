% 20130503 XY511 09:45
% AbrahamX @ NWPU
% Polynomial and Convolution
% The two ideas above are of GREAT importance. Either
% in Engineering field, or Scientific field.

format rat  % Avoid float numbers
p1 = conv([1,0,2], conv([1,4],[1,1]));  % Nominator
p2 = [1, 0, 1, 1];  % Denominator
[q, r] = deconv(p1, p2);  % Q for quotient, R for remainder
cq = 'Polynomial for Quotient is: ';
cr = 'Polynomial for Remainder is: ';
disp([cq, poly2str(q, 's')])
disp([cr, poly2str(r, 's')])  % Note: poly2str is a pre-defined func

% Verification
qp2 = conv(q, p2);  % Conv could also be regarded as multiply
pp1 = qp2 + r;  % Combine the ans above, and add remainder
pp1 == p1  % Right or Wrong, magic mirror


% Comment: As with this line of code---->pp1 == p1, there is a FBI
% Warning. We can do the FUCKING comparison here due to the code
% "format rat". In general, YOU can never compare two float numbers,
% because they can NOT be compared!!!
% A common method to compare float numbers is to do---->
% "norm(a - b)"
% then you can tell from the answer.




% Comment: Keep moving, even if I am working like a dog. When
% you reverse this, you'll find you're working like a god. Gold
% miners~