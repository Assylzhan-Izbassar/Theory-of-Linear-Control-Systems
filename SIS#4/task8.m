num = 1;
denum = poly([0 -7 -15]);
G = tf(num, denum);

w = 0.01:0.1:100;
% Enter K
K = input('Type gain, K');
bode(K*G, w);

[M, P] = bode(K*G, w);
% Calculate gain margin
for i=1:1:length(P)
    if P(i) <= -180
        fprintf ('\nGain K = %g', K);
        fprintf (', Frequency (180 deg) = %g', w(i));
        fprintf (', Magnitude = %g', M (i));
        fprintf (', Magnitude(dB) = %g',20*log10(M(i)));
        fprintf(', Phase = %g',P(i));
        Gm = 20*log10(1/M(i));
        fprintf(', Gain margin(dB) = %g',Gm);
        break;
    end
end

% Calculate the phase margin
for i = 1:1:length(M)
     if M(i) <= 1
         fprintf ('\nGain K = %g', K);
         fprintf (', Frequency (180 deg) = %g', w(i));
         fprintf (', Magnitude = %g', M (i));
         fprintf (', Magnitude(dB) = %g',20*log10(M(i)));
         fprintf(', Phase = %g',P(i));
         Pm = 180 + P(i);
         fprintf(', Phase margin(dB) = %g', Pm);
         break;
     end
end
