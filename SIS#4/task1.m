G1 = tf([0 1], [1 3]);      % G1 = 1/s+3 input transducer
G2 = tf([0 0 1], [1 3 5]);  % G2 = 1/s^2+3s+5
G3 = tf([0 1], [1 7]);      % G3 = 1/s+7
G4 = tf([0 1],[1 0]);       % G4 = 1/s
G5 = tf([0 7], [1 5]);      % G5 = 7/s+5
G6 = tf([0 0 1], [1 3 5]);  % G6 = 1/s^2+3s+5
G7 = tf([0 5], [1 6]);      % G7 = 5/s+6
G8 = tf([0 1], [1 8]);      % G8 = 1/s+8
G9 = tf(1, 1);              %Add G9=1 transducer at the input

T1 = append(G1,G2,G3,G4,G5,G6,G7,G8,G9);

Connections = [1 -2 -5  9
               2  1  8  0
               3  1  8  0
               4  1  8  0
               5  3  4 -6
               6  7  0  0
               7  3  4 -6
               8  7  0  0];

inputs = 9;
outputs = 7;

Ts = connect(T1, Connections, inputs, outputs);
T = tf(Ts);
% Display the T;