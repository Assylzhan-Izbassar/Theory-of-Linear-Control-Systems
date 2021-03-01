disp("(a)");
A = [4 5 -3; -1 2 3; 2 5 7];
getEig(A);

disp("(b)");
B = [1 2 3; 8 9 6; 5 3 -1];
getEig(B);

function getEig(A)
    [P, D] = eig(A); 
    disp("Eigenvalues of matrix are:");
    disp(diag(D));
    disp("Eigenvectors of matrix are:");
    disp(P);
end