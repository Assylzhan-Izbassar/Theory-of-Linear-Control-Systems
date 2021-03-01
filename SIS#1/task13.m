A = [1 0 2; 
     2 5 4; 
    -1 8 7];

B = [7 8 2; 
     3 5 9; 
    -1 3 1];

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
disp(inv(B));
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