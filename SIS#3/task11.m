% For the 1st system -------------
disp('(a)');
% (a)
G = zpk(-2, [0 -1 -3], 80);
G = tf(G);
bode(G);
title('System 1');

% Find phase margin
[Gm, Pm, Wcg, Wcp] = margin(G);
w = 1:.01:20;
[M,P,w] = bode(G, w);

% Find bandwidth
for k = 1:1:length(M)
    if 20*log10(M(k))+7 <= 0
        wBW = w(k);
        break;
    end
end

% (b)
% Find damping ratio, percent overshoot, setting time, and peak time
for z = 0:.01:10
    Pt = atan(2*z/(sqrt(-2*z^2 + sqrt(1+4*z^4))))*(180/pi);
    if (Pm - Pt) <= 0
        Po = exp(-z*pi/sqrt(1-z^2));
        Ts = (4/(wBW*z))*sqrt((1-2*z^2)+sqrt(4*z^4-4*z^2+2));
        Tp = (pi/(wBW*sqrt(1-z^2)))*sqrt((1-2*z^2)+sqrt(4*z^4-4*z^2+2));
        fprintf ('Bandwidth = %g', wBW);
        fprintf (', Phase margin = %g', Pm);
        fprintf (', Damping ratio = %g', z);
        fprintf (', Percent overshoot = %g', Po*100);
        fprintf (', Settling time = %g', Ts);
        fprintf (', Peak time= %g', Tp);
        break;
    end
end

% (c)
T = feedback(G, 1);
step(T);
title('Step response system 1');

% For the 2nd system -------------

disp('(b)');
% (b)
G = zpk([1 8 15], [1 12 44 48 0], 40);
G = tf(G);
bode(G);
title('System 2');

% Find phase margin
[Gm, Pm, Wcg, Wcp] = margin(G);
w = 1:.01:20;
[M,P,w] = bode(G, w);

% Find bandwidth
for k = 1:1:length(M)
    if 20*log10(M(k))+7 <= 0
        wBW = w(k);
        break;
    end
end

% (b)
% Find damping ratio, percent overshoot, setting time, and peak time
for z = 0:.01:10
    Pt = atan(2*z/(sqrt(-2*z^2 + sqrt(1+4*z^4))))*(180/pi);
    if (Pm - Pt) <= 0
        Po = exp(-z*pi/sqrt(1-z^2));
        Ts = (4/(wBW*z))*sqrt((1-2*z^2)+sqrt(4*z^4-4*z^2+2));
        Tp = (pi/(wBW*sqrt(1-z^2)))*sqrt((1-2*z^2)+sqrt(4*z^4-4*z^2+2));
        fprintf ('Bandwidth = %g', wBW);
        fprintf (', Phase margin = %g', Pm);
        fprintf (', Damping ratio = %g', z);
        fprintf (', Percent overshoot = %g', Po*100);
        fprintf (', Settling time = %g', Ts);
        fprintf (', Peak time= %g', Tp);
        break;
    end
end

% (c)
T = feedback(G, 1);
step(T);
title('Step response system 2');
        