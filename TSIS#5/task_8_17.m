
n = 4;

s = tf('s');
G = -625/((s+5)^n);

h = nyquistplot(G);

opt = getoptions(h);

opt.Title.String = 'Nyquist Plot with k = -625, and n = 4';
setoptions(h,opt)
