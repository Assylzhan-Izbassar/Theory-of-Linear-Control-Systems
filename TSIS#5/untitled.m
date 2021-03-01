num = [100 500];
denum = [1 4 25 0];

G = tf(num, denum);

nyquist(G);