num = [0 0 0 1];
denum = [1 5 7 0];
 
% (a)
rlocus(num, denum);
grid;
title('Root-Locus plot');
 
% (c) 
p = [1 5 7 8];
disp(roots(p));
 
% (d)
num = [0 0 0 8];
den = [1 5 7 8];
step(num,den);
grid
title('Unit-Step Response');
xlabel('t');
ylabel('Output');
