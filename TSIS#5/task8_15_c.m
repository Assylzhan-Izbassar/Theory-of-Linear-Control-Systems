num = [100 100];
denum = conv([1 0], conv(conv([0.1 1], [0.2 1]), [0.5 1]));

L = tf(num, denum);

nyquist(L);
