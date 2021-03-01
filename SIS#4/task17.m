s = tf('s');
% Given:
R = 1/s;
Gc = 80/(s^2+3*s);
Gp = 1/s;
Kt = 0.15;

% Evaluate the inner closed loop:
Gi = Gc/(1+Gc*Kt);

% Combine the series transfer functions:
Gt = Gi*Gp;
Gt = minreal(Gt);

% Finding the closed-loop transfer function
% and evaluate the C(s)
C = (Gt*R)/(1+Gt);
C = minreal(C);

% function of C when R = unit input (i.e. 1/s)
%disp(C);

syms s t
num = poly2sym(C.Numerator, s);
den = poly2sym(C.Denominator, s);
c(t) = ilaplace(num/den);
c=vpa(c,4);

disp('its form in time domain:');
disp(c);
