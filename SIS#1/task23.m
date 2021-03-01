A = [3 -1 2 1; 1 2 7 4; 7 -1 8 6; 1 -2 3 4];
B = [1 2 5 7; 2 -1 -2 4; 3 2 5 1; 4 1 -3 6];

[P, D] = eig(A*B);

disp("Eigenvalues of A*B are");
disp(diag(D));
disp("Eigenvectors of A*B are");
disp(P);