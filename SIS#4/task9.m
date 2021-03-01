num = [1 3];
denum = [1 4 20 0];

G = tf(num,denum);

% readline the gain K 
K = input('Type a gain K');

T = feedback(K*G, 1);

% (a)
bode(T);
title('Closed-loop frequency responce');

% (b)
[M, P, w] = bode(T);
[Mp, i] = max(M);
MpdB = 20*log10(Mp);
wp = w(i);

for i = 1:1:length(M)
    if M(i) <= 0.707
        fprintf('Bandwidth = %g\n', w(i));
        break;
    end
end