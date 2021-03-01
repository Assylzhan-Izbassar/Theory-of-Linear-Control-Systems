A = [4 6 2; 5 6 7; 10 5 8];

% (a)
disp("(a)");
eigenvalues = eig(A);
disp("Eigenvalues of matrix A:");
disp(eigenvalues);

% (b)
disp("(b)");
[P, D] = eig(A);
disp("Eigenvectors of matrix A:");
disp(P);

% (c)
disp("(c)");
if round(A*P) == round(P*D)
    disp(true);
else
    disp(false);
end



