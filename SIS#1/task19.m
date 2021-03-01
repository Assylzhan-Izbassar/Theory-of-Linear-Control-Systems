A = [1 -2; 1 5];
B = [1 5; -2 7];

[Q,d] = eig(A);

disp("Eigenvalue and eigenvectors of A: ");
disp(Q);
disp(d);
%disp(Q\A*Q); checking is eigenvalues are true

[P, D] = eig(B);

disp("Eigenvalue and eigenvectors of B: ");
disp(P);
disp(D);