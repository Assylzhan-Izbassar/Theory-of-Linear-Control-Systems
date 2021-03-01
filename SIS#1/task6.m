x=[2 3 8 10 -1 -3 -5 -6.2];
y = (x.^(sqrt(2)+0.02) + exp(x)).^1.8 .* log(x);
fprintf("%.4f ", y);
disp(" ");

