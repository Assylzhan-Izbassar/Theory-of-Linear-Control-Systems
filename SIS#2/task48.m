syms x(t) u(t)

Dx= diff(x,t);
D2x = diff(x,t,2);

u(t) = 1; % because we get when t >= 0

% (a)
%    (i)
eqn = D2x + 7*Dx + 5*x == 8*u(t);
solve_diff(eqn, x, Dx, 0, 0, '(a)', '(i)');
%    (ii)
solve_diff(eqn, x, Dx, 0, 3, '(a)', '(ii)');

% (b)
%    (i)
eqn = D2x + 12*Dx + 15*x == 35;
solve_diff(eqn, x, Dx, 0, 0, '(b)', '(i)');
%    (ii)
solve_diff(eqn, x, Dx, 0, 1, '(b)', '(ii)');
%    (iii)
eqn = D2x + 8*Dx - 4*x == 18*u(t);
solve_diff(eqn, x, Dx, -1, 1, '(b)', '(iii)');

function solve_diff(eqn, x, Dx, a, b, label1, label2)
    fprintf('%s\n', label1, label2);
    cond1 = x(0) == a;
    cond2 = Dx(0) == b;
    conds = [cond1 cond2];
    
    ySol = dsolve(eqn, conds);
    ySol = simplify(ySol);

    disp(ySol);
end