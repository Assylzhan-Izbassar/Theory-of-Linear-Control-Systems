syms s F(s)

% (a)
F(s) = s/(s*(s+2)*(s+3)*(s+5));
disp('(a)');
disp(ilaplace(F));

% (b)
F(s) = 1/(s^2*(s+7));
disp('(b)');
disp(ilaplace(F));