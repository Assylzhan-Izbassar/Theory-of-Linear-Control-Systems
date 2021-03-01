syms x y z

eqn1 = 2*x - y == 10;
eqn2 = -x + 2*y - z;
eqn3 = -y + z == -50;

[x,y,z] = solve(eqn1, eqn2, eqn3);

fprintf(" x = %d\n y = %d\n z = %d\n", x,y,z);