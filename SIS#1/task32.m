w = 15;
x = 0:0.1:15;
y = exp(-0.7*x).*sin(w*x);
plot(x,y);
xlabel("x");
ylabel("y");
title("y(x) = e^-^0^.^7^x sin\omega x");