syms x

% (a)
disp('(a)');
solve_eqn(x^2 + 9, x, 2);

% (b)
disp('(b)');
solve_eqn(x^2 + 5*x - 8, x, 2)

% (c)
disp('(c)');
solve_eqn(x^3 + 11*x^2 - 7*x + 8, x, 3)

% (d)
disp('(d)');
solve_eqn(x^4 + 11*x^3 + 7*x^2 - 19*x + 28, x, 4)

% (e)
disp('(e)');
solve_eqn(x^7 - 8*x^5 + 7*x^4 + 5*x^3 - 8*x + 9, x, 7);

function solve_eqn(eqn, x, k)
    S = double(solve(eqn,x, "MaxDegree", k));
    disp(S);
end
