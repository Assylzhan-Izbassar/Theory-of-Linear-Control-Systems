% (a)
disp("(a)");
A = [0.5 -0.8; 0.75 1.0];
getEig(A);

% (b)
disp("(b)");
A = [8 3; -3 4];
getEig(A);

function getEig(A)
    [P, D] = eig(A);
    disp("Eigenvalues are:");
    disp(diag(D));
    disp("Eigenvectors are:");
    disp(P);
end