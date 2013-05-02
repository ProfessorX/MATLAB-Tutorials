% 20130502 XY511 12:10
% AbrahamX @ NWPU
% Eigenvalue of matrices. 
% Merely mastering prorgamming language is never enough.
% Data Struicture & Algorithm is the future.
A = [1, -3; 2, 2/3]
[V, D] = eig(A)

% Convert D into real numbers
[VR, DR] = cdf2rdf(V, D)  % Ask HELP for more info

% Final verification
A1 = V * D/V
A1_1 = real(A1)  % remove imaginary part
A2 = VR * DR/VR
err1 = norm(A-A1, 'fro')
err2 = norm(A-A2, 'fro')


% Comment: To be added after the fucking lunch. Commit & Lunch.