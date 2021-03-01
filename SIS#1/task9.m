n = @(s) s^4 + 6*s^3 + 5*s^2 + 4 * s + 3;
d = @(s) s^5 + 7*s^4 + 6*s^3 + 5*s^2 + 4*s + 7;

H = @(s) n(s)/d(s);

% (a)
disp("(a)");
disp(n(-10));
disp(n(-5));
disp(n(-3));
disp(n(-1));

% (b)
disp("(b)");
disp(d(-10));
disp(d(-5));
disp(d(-3));
disp(d(-1));

% (c)
disp("(c)");
disp(H(-10));
disp(H(-5));
disp(H(-3));
disp(H(-1));