a = [6 -3 4 1; 0 4 2 6; 1 3 8 5; 2 2 1 4];
b = [0 1 2 3; 4 5 6 -1; 1 5 4 2; 2 -3 6 7];

A = a*b;
getEig(A);

function getEig(A)
    [P, D] = eig(A); 
    disp("Eigenvalues of matrix are:");
    disp(diag(D));
    disp("Eigenvectors of matrix are:");
    disp(P);
end