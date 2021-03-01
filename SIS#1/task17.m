% (a)
disp("(a)");
A = [3 2 1; -1 5 4; 5 7 -9];
getInverse(A);

% (b)
disp("(b)");
B = [1 6 3; -4 -5 7; 8 4 2];
getInverse(B)

% (c)
disp("(c)");
C = [-1 -2 5; -4 7 2; 7 -8 -1];
getInverse(C);

function getInverse(A)
    if round(det(A)) ~= 0
        disp(inv(A));
    else
        disp(NaN);
    end
end