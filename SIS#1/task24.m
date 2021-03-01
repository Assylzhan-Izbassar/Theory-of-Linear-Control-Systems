disp("(a)");
A = [1 -2; 1 3];
getEigs(A);

disp("(b)");
A = [1 5; -2 4];
getEigs(A);

disp("(c)");
A = [4 -1 5; 2 1 3; 6 -7 9];
getEigs(A);

disp("(d)");
A = [3 5 7; 2 4 8; 5 6 10];
getEigs(A);

disp("(e)");
A = [3 0 2 1; 1 2 5 4; 7 -1 2 6; 1 -2 3 4];
getEigs(A);

disp("(f)");
A = [1 3 5 7; 2 -1 -2 4; 3 2 1 1; 4 1 0 6];
getEigs(A);

function getEigs(A)
    [P, D] = eig(A); 
    disp("Eigenvalues of A are:");
    disp(diag(D));
    disp("Eigenvectors of A are:");
    disp(P);
end