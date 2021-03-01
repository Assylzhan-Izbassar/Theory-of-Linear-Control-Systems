A = [2 1; 0 5; 7 4];
B = [5 3; -2 -4];
C = [2 3; -5 -2; 0 3];
D = [1 2];

% (a)
getInverse(A*C', "(a)");
% (b)
disp("(b)");
disp(abs(B));
disp(det(abs(B)));
% (c)
disp("(c)");
disp(abs(A*C'));
disp(det(abs(A*C')));
% (d)
getInverse(C'*A, "(d)");

function getInverse(T, c)
    disp(c);
    if round(det(T)) ~= 0
        disp(inv(T));
        disp(det(T));
    else
        disp("inverse does not exist, 'cause det = 0");
    end
end