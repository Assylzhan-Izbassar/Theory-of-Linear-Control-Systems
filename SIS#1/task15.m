j = sqrt(-1);

A = [3 2*pi; 5*j 10+sqrt(2)*j];
B = [7*j -15*j; 2*pi 18];

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
    disp("NO inverse of B");
end
% (f)
disp("(f)");
disp(B'*A');
% (g)
disp("(g)");
disp(A^2 + B^2 - A*B);