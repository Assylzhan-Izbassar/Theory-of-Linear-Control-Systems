% (a)
s = tf('s');

G = (2000*(s+0.5))/(s*(s+10)*(s+50));
bode(G);
title('Bode plot of G(jw)');

% (b)
G = 25/(s*(2.5*s^2+s+10));
bode(G);
title('Bode plot of G(jw) (b)');