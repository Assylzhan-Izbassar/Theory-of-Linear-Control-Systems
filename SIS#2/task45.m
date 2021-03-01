syms x y z

eqn1 = 2*x + y - 3*z == 11;
eqn2 = 4*x - 2*y + 3*z == 8;
eqn3 = -2*x + 2*y - z == -6;

[x, y, z] = solve(eqn1, eqn2, eqn3);

fprintf(" x = %d\n y = %d\n z = %d\n", x,y,z);
