num = -10;
denum = conv([0 1 1], [1 2 2]);

% w=-100:0.1:1000; 
% [re, im, w] = nyquist(num, denum, w);
nyquist(num, denum);
% plot(re,im);