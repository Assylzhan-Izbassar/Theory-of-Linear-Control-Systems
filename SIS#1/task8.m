A=[1 2 3; -8 5 7; -8 4 6];
B=[12 -5 4; 7 11 6; 1 8 13];
C=[7 13 4; -2 8 -5; 9 -6 11];

% (a) A+B = B+A
show(A+B, B+A);

% (b) A+(B+C)=(A+B)*C
show(A+(B+C), (A+B)*C);

% (c) 7*(A+C)=7*(A)+7*(C)
show(7*(A+C), 7*(A)+7*(C));

% (d) A*(B+C)=A*B+A*C
show(A*(B+C), A*B+A*C);

function show(A, B)
    if all(A == B)
        disp(true);
    else
        disp(false);
    end
end