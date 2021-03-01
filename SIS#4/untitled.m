syms s 
G(s) = 80/(s^4 + 3 * s^3 + 12*s^2 + 80*s);

c = ilaplace(G);
disp(c);