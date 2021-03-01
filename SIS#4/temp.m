num = [0 0 0 0 120];
den = [1 8 15 0 0];

G = tf(num, den);
Gt = feedback(G, 1);

pole(Gt)

nyquist(Gt)