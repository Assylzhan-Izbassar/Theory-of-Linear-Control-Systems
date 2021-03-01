% Solve the following set of equations
% (a)
disp("(a)");
A = [1 2 3 5; -2 5 7 -9; 5 7 2 -5; -1 -3 -7 7];
B = [21; 17; 23; 26];

solve(A,B);

% (b)
disp("(b)");
A = [1 2 3 4; 2 -2 -1 1; 1 -3 4 -4; 2 2 -3 4];
B = [9; -5; 7; -6];

solve(A,B);

function solve(A,B)
    x = A\B;
    disp(x);
end