num = 1;
denum = conv(conv([1 0], [1 2]), [1 10]);

L = tf(num, denum);

nyquist(L);
