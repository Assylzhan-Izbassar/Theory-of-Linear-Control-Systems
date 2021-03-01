% plot the following functions
% (a)
t = linspace(0, 2*pi, 200);
r = sqrt(abs(5*cos(3*t)));
polarplot(t,r);
title("(a) r^2=5cos(3t)");

% (b)
x = r.*cos(t);
y = r.*sin(t);
plot(x,y,'r');
xlabel('x');
ylabel('y');

% (c)
x = linspace(0,20);
y1 = exp(-2*x).*cos(x);
y2 = exp(2*x);

yyaxis left
plot(x,y1);
ylabel('e^–^2^xcos(x)');

yyaxis right
plot(x,y2);
ylabel('e^2^x');

xlabel('x');
title("exponential functions")

cla reset

% (d)
x = linspace(-5*pi,5*pi);
y = cos(x)./x;
area(x,y);
title("(d) y = cos(x)/x")
xlabel("x (rad)");
ylabel("y");
xlim([-5*pi, 5*pi]);

% (e) 
t = linspace(0, 2*pi, 200);
f = exp((-3*t)/5).*cos(t);
stem(t,f), grid;
title("(e) f(x)=e^-^3^t^/^5cos(t)");
xlabel("t");
ylabel("f");

% (f)
r = linspace(-7,7);
[x,y] = meshgrid(r,r);
z = (-1/3).*x.^2 + 2.*x.*y + y.^2;
surf(x,y,z);
title("(f) z=(-1/3)x^2+2xy+y^2");
xlabel("x");
ylabel("y");
zlabel("z");