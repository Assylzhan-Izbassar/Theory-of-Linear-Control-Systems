syms t
% for the integral form 0 to infinity 
u = 1;

% (a)
g = 5*t*exp(-5*t)*u;
getLaplace(g, '(a)');

% (b)
g = (t*sin(2*t)+exp(-2*t))*u;
getLaplace(g, '(b)');

% (c)
g = 2*exp(-2*t)*sin(2*t)*u;
getLaplace(g, '(c)');

% (d)
g = sin(2*t)*cos(2*t)*u;
getLaplace(g, '(d)');

% (e)
syms k T 
f = exp(-5*k*T)*dirac(t-k*T);
g = getLaplace(f, '(e)');
disp(symsum(g, k, 0, Inf));
disp("Then, because of geometric series, and -1 < r < 1, we get ans of this 1/(1-exp(-T*(s+5)))")

function L = getLaplace(g, c)
    L = laplace(g);
    disp(c);
    disp(L);
end