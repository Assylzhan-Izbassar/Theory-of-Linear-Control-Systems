A = [1 2 3 4 5 6 7 8];

for i = 2:5
    for j = 1:length(A)
        A(i,j) = A(i-1,j)+8;
    end
end

B = A(:,[1,2,4,8]);

T1 = A(1:4,[4,6]);
T2 = reshape(A(5, :), 4,2);
C = cat(2, T2, T1);
C = reshape(C, 1,16);
C = sort(C);

disp("B is:");
disp(B);
disp("C is: ");
disp(C);

