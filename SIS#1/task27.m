A = [0 1 -3; 2 3 -1; 4 5 -2];
B = [-7; 9; 15];

% A*X=B
% inv(A)*A*X = inv(A)*B
% I*X = inv(A)*B
% X = inv(A)*B

x = A\B;
disp(x);

