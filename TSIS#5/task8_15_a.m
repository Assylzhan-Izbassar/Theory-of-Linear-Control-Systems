num = 20;
denum = conv(conv([1 0], [0.1 1]), [0.5 1]);

L = tf(num, denum);

nyquist(L);
