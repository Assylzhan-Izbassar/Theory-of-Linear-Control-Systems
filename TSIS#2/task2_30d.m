syms y(t) r(t) s Y(s) R(s)

d2y = diff(y, t, 2);
dy = diff(y, t);

num = 2*d2y + dy + 5*y(t);
eqn1LT = laplace(num, t, s);
eqn1LT = subs(eqn1LT, laplace(y,t,s), Y);

denum = r(t) + 2*r(t-1)*heaviside(t-1);
eqn2LT = laplace(denum, t, s);
eqn2LT = subs(eqn2LT, laplace(r,t,s), R);

C = coeffs(eqn1LT, Y);
C2 = coeffs(eqn2LT, R);

H = C2(end)/C(end);
pretty(H);