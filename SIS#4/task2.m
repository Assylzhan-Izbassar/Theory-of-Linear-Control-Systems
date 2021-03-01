G = tf(8, [1 4 3 0]);
G = zpk(G);
% unit-step response plot
step(G);
[y, x, t] = step(G);

S = stepinfo(G);

disp(S);
