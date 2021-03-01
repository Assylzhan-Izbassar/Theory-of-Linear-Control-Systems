% (a)
r = linspace(-7,7);
[x,y] = meshgrid(r,r);
z=cos(x).*cos(y).*exp(-sqrt((x.^2+y.^2)/5));
surf(x,y,z);
xlabel('x');
ylabel('y');
zlabel('z');
title("z=cos(x)cos(y)e^-^{\surd}^(^x^{^2}^+^y^{^2}^)^/^5");

% (b)
t = linspace(0, 5*pi, 200);
x = t;
y = t.*cos(t);
z = exp(t/5) - 2;
stem3(x,y,z, 'filled');
xlabel('t');
ylabel('tcos(t)');
zlabel('e^t^/^5- 2');

% (c)
rx=1;
ry=2.5;
rz=0.7;

ellipsoid(0,0,0,rx,ry,rz);
xlabel('x');
ylabel('y');
zlabel('z');
title('The ellipsoid');

% (d)
z = 0:0.2:1;
r = sin(5*pi*z) + 3;
cylinder(r);
title("the cylinder");
