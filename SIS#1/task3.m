a = 1;
b = 2;
c = 1.8;

x = a+(a*b*(a+b))/c*sqrt(abs(a*b))+(c^a)+(sqrt(14)*b)/exp(3*c)+log(2)+(log10(c)/log10(a+b+c))+2*sinh(a)-3*tanh(b);

fprintf("%.4f\n", x);