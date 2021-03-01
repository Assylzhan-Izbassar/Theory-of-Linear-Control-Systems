A = [1 0 1; 2 3 4; -1 6 7];
B = [7 4 2; 3 5 6; -1 2 1];

% (a)
disp("(a)");
disp(A+B);
% (b)
disp("(b)");
disp(A*B);
% (c)
disp("(c)");
disp(A^2);
% (d)
disp("(d)");
disp(A');
% (e)
disp("(e)");
if round(det(B)) ~= 0
    disp(inv(B));
else
    disp("inverse does not exist");
end
% (f)
disp("(f)");
disp(B'*A');
% (g)
disp("(g)");
disp(A^2 + B^2 - A*B);
% (h)
disp("(h)");
disp(det(A));
disp(det(B));
disp(det(A*B));