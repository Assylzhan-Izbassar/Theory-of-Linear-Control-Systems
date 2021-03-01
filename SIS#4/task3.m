num = [0 0 8 8];
denum = [1 3 0 0];
t = 0:0.2:10;
r = 0.5*t.^2;
y = lsim(num, denum, r, t);

% graph
plot(t,r,'-',t,y,'o',t,y,'-');

grid
title('Unit-Acceleration Response');
xlabel('t(sec)');
ylabel('input&output');

% annotations
x = [0.6 0.77];
y = [0.6 0.5];
annotation('textarrow',x,y,'String','Output');
x = [0.6 0.75];
y = [0.3 0.13];
annotation('textarrow',x,y,'String','Unit-Acceleration Input');