% Solve the following set of equations
% (a)
disp("(a)");
A = [2 1 1 -1; 1 5 -5 6; -7 3 -7 -5; 1 -5 2 7];
B = [10; 25; 5; 11];

solve(A,B);

% (b)
disp("(b)");
A = [1 -1 3 5; 2 1 -1 1; -1 -1 2 2; 1 1 -1 5];
B = [5; 4; 3; 1];

solve(A,B);

function solve(A,B)
    x = A\B;
    disp(x);
end