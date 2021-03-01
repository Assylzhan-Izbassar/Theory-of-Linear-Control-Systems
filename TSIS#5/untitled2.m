num = [0 0 1 5];
denum = [1 4 25 0];

G = tf(num, denum);

bode(G);