p1 = [1 5 3 10];
p2 = [1 7 5 8 15];
p3 = [1 15 10 6 3 9];

% (a)
disp("(a)");
disp(polyval(p1, 2));
disp(polyval(p2, 2));
disp(polyval(p3, 3));

% (b)
disp("(b)");
disp(conv(conv(p1,p2),p3));

% (c)
disp("(c)");
[g,t] = deconv(conv(p1,p2),p3);
disp(g);
disp(t);