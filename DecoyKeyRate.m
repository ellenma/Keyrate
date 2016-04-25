filename = 'DecoyQKDCounts.txt'

[Qu, Qv, Eu, Ev] = DataLoader(filename);

u = 0.015;
v = 0.01;

f = 1.16;
e0 = 0.5;

Q1 = u^2*exp(-u) / (u * v - v^2) *...
    (Qv * exp(v) - Qu * exp(u) * v^2 / u^2 - Eu * Qu * exp(u) * (u^2 - v^2) / e0 / u^2);

e1 = Eu * Qu / Q1;

R = Q1 * (1 - h(e1)) - Qu * f * h(Eu)
