% (a)
disp("(a)");
A = [2 1 1 -1; 
     1 5 -5 6; 
    -7 3 -7 -5; 
     1 -5 2 7];

B = [12; 
     35; 
      7; 
     21];
 
solve(A,B);

% (b)
disp("(b)");
A = [1 -1 3 5; 
     2 1 -1 1;
    -1 -1 -2 2; 
     1 1 -1 5];
 
B = [7; 
     6; 
     5; 
     4];
 
solve(A,B);

function solve(A,B)
    x = A\B;
    disp(x);
end