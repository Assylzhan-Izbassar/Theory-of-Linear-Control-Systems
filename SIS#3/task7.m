% Bode diagram 
num = [0 5 51 20 400];
denum = [1 12 60 300 250];

bode(num, denum);
title('Bode diagram of G(s)');