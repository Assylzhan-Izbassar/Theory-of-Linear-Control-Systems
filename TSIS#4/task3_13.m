syms K t s
% init the given
M = 30000;
Kt = 0.15;

f(t) = 100*(1-0.3*exp(-6*t)-0.7*exp(-10*t));

% solving
F(s) = laplace(f);
% (a)
Gc(s) = F*s;
% (b)
VtoE = (K/M*s) * Gc;
% (c)
Gt = VtoE;
VtoEr = Gt/(1+Gt*Kt);

Gc = eval(Gc);
VtoE = eval(VtoE);
VtoEr = eval(VtoEr);

disp('The transfer function Gc:');
disp(Gc);
disp('V(s)/E(s) is:');
disp(VtoE);
disp('V(s)/Er(s) is:');
disp(VtoEr);