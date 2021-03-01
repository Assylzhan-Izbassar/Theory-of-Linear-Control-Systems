% The partial fraction expansion of F(s) using MATLAB program is given as follows:
num = [0 5 7 8 30];
den = [1 15 62 85 25];

[r, p, k] = residue(num, den);

disp('r:');
disp(r);
disp('p:');
disp(p);
disp('k:');
disp(k);