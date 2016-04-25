% Q = (0.000453031 + 0.000860871) / 2
Q = 0.000860871
E = 0.0542
mu = 0.024
Omega = 1 - pMulti(mu) / Q
f = 1.16
Counts = dlmread('NoDecoyQKDCounts.txt','\t','A2..E5');
p=(sum(Counts(2:3,1))/sum(Counts(2:5,1))) * (sum(Counts(2:3,2:3))/sum(Counts(1:2,2:5)))+...
(sum(Counts(4:5,1))/sum(Counts(2:5,1))) * (sum(Counts(4:5,2:3))/sum(Counts(4:5,2:5)));%Prob(Alice and Bob use compatible bases)

R = Q * (-h(E) * f + Omega * (1 - h(E / Omega))) * 1e7
