num = 1;
denum = conv([1 0 0], conv([0 1 2], [0 1 10]));
L = tf(num, denum);

nyquist(L);
