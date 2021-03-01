syms y(x) c
DY = diff(y);

% (a)
cond = y(2) == 0.5;
ode = DY == 8*x^2 + 5;
getY(ode,cond,x, '(a)');

% (b)
cond = y(0) == pi/5;
ode = DY == 5*x*sin(y)^2;
getY(ode,cond,x,'(b)');

% (c)
disp('(c)')
cond = y(0) == c;
ode = DY == 7*x*(cos(y)^2);
ySol(x) = dsolve(ode,cond);
disp(ySol(x));

% (d)
cond = y(0) == 3;
ode = DY == -5*x+y;
getY(ode,cond,x,'(d)');

% (e)
cond = y(0) == 2;
ode = DY == 3*y + exp(-5*x);
getY(ode,cond,x,'(e)');

function getY(ode, cond, x, l)
    disp(l);
    ySol(x) = dsolve(ode, cond);
    disp(ySol(x));
end