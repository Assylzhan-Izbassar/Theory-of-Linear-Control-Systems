a = 0.75;
b = 11.3;
x = [2 5 1 9];
y = [0.2 1.1 1.8 2];
z = [-3 2 5 4];

A = (x.^(1.1) .* y.^(-2) .* z.^5)./(a+b).^(b/3) + a .* ((z./x + y./2)./(z.^a));

fprintf("%.4f\n", A);