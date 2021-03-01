num = 1;
denum = conv([1 0], conv(conv([1 2], [1 5]), [1 15]));

L = tf(num, denum);

nyquist(L);
