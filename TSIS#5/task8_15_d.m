num = 10;
denum = conv([1 0 0], conv([0 0.2 1], [0 0.5 1]));

L = tf(num, denum);

nyquist(L);
