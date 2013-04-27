% 20130424 XY511 10:35
% AbrahamX @ NWPU
% Solving linear equations in Block Diagram format
% So many fucking graduate students I have seen
% won't accept the fact & fate of being a software
% engineer, or more directly, a code warrior after
% graduation. They say, I have spent several more
% years, why would I have the same profession as my
% former classmates do. Sorry buddy, that's the REALITY.
% That's the trend and what you will get in few years.
% #####################################################
% So in order to make full preparation for the future,
% you should start some coding or programmnig practice
% those days. I might write something to let you know more,
% but not now...I am LEARNING too.

syms G1 G2 G3 G4 H1 H2 H3
A = [0, 0, 0, 0, 0, 0, -G1;
    G2, 0, 0, 0, 0, -G2, 0;
    0, G3, 0, 0, G3, 0,  0;
    0, 0, G4, 0, 0, 0, 0;
    0, 0, 0, H2, 0, 0, 0;
    0, 0, 0, H1, 0, 0, 0;
    0, 0, 0, H3, 0, 0, 0];
  
b = [G1; 0; 0; 0; 0; 0; 0];
c = [0, 0, 0, 1, 0, 0, 0];
Y2Ua = c * ((eye(size(A))-A)\b);  % When you embed those steps
% You should be aware of how many braces you HAVE added, and how many
% more do you HAVE TO add. Symmetry is beauty.
[NN, D0] = numden(Y2Ua);  % numerator & denumerator
D0  %#ok<NOPTS> % Display D0
DD = sort(D0)
disp([blanks(5), 'Transfer function Y2Ua is'])
pretty(NN/DD)

% ################################################################
% x = Ax + bU
% Y = cx
% #######
% x = (I-A)^-1 * bU
% ----> Y = cx = c (I-A)^-1 * bU
% #######
% Transfer function would be
% G = Y/U = c(I-A)^-1 *b  (the "-1" represent the INVerse of a MATRIX)
% And remember you should use **DIVISION** instead of INV with matrix.


% Comment: This and the later program reminds me of the semester
% of learning Principles of Automation. I should read more about it
% at that time. Before, I paid so much attention to Data Structure,
% anyhow it works. Now it's time to do something with theory, as well
% as codes. I won't change a bit my characters for any other body now.
% I am myself. That's it.. I have my ideas; I carry them out. Simple.
% Some ideas by Abraham Xiao @ Harmony Research Center.
% His title: Professor, Geek, and Hacker.



  
    