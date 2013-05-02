% 20130502 XY511 12:10
% AbrahamX @ NWPU
% Eigenvalue of matrices. 
% Merely mastering prorgamming language is never enough.
% Data Struicture & Algorithm is the future.
A = [1, -3; 2, 2/3]
[V, D] = eig(A)

% Convert D into real numbers
[VR, DR] = cdf2rdf(V, D)  % Ask HELP for more info about "cdf2rdf"

% Final verification
A1 = V * D/V
A1_1 = real(A1)  % remove imaginary part
A2 = VR * DR/VR
err1 = norm(A-A1, 'fro')
err2 = norm(A-A2, 'fro')


% Comment: Well, could not remember what to write here. Add a piece 
% of suggestion---->When you have made a promise about something,
% then focus on it and do spare time FUCKING it till explode.
% Take the graduation design as an example, there's a lot of work
% to do, and once you broke the plan, you have to make up for it;
% or, wait another year before you are fucked off by NWPU.