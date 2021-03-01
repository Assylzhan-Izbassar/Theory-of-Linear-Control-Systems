syms t a s f(t)
% (c)
disp('(c)');
f(t) = 5*t + 7;
disp(laplace(f,s));
% (d)
disp('(d)');
f(t) = 5*heaviside(t) + 8*exp(7*t) - 12*exp(-8*t);
disp(laplace(f,s));
% (e)
disp('(e)');
f(t) = exp(-t) + 9*t^3 - 7*t^-2 + 8;
disp(laplace(f,s));