t = 0:0.1:6*pi;
x = sqrt(t).* sin(3*t);
y = sqrt(t).* cos(3*t);
z = 0.8*t;
plot3(x,y,z,'linewidth',1), grid;
xlabel('x');
ylabel('y');
zlabel('z');
title('3D function');