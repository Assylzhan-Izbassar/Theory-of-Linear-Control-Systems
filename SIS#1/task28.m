% (a)
disp("(a)");
A = [2 1 -3; 4 -2 3; -2 2 -1];
B = [11; 8; -6];
solve(A,B);

% (b)
disp("(b)");
A = [2 -1 0; -1 2 -1; 0 -1 1];
B = [10; 0; -50];
solve(A,B);

function solve(A,B)
    x = A\B;
    disp(x);
end