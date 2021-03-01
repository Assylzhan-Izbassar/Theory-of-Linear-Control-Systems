% (a)
disp("(a)");
A = [3 2 0; 2 -1 7; 5 4 9];
getInverse(A);

% (b)
disp("(b)");
A = [-4 2 5; 7 -1 6; 2 3 7];
getInverse(A);

% (c)
disp("(c)");
A = [-1 2 -5; 4 3 7; 7 -6 1];
getInverse(A);

% (d)
disp("(d)");
A = [3 2 1; -1 2 4; 5 7 -8];
getInverse(A);

% (e)
disp("(e)");
A = [1 2 3; -4 -5 7; 8 4 1];
getInverse(A);

% (f)
disp("(f)");
A = [-1 -2 5; -4 5 6; 7 8 -1];
getInverse(A);

function getInverse(A)
    if round(det(A)) ~= 0
        disp(inv(A));
    else
        disp(NaN);
    end
end

