function [Q, E] = QECalculator(synRecordNum, counts)

[m, n] = size(counts);

if (m ~= 4 || n ~= 5)
    throw(MException('Keyrate:QECalculator', 'counts should be a 4 x 5 matrix'))
end


Qr = (counts(1, 2) + counts(1, 3) + counts(2, 2) + counts(2, 3)) /...
    (0.5 * synRecordNum * (counts(1, 1) + counts(2, 1)));

Qd = (counts(3, 4) + counts(3, 5) + counts(4, 4) + counts(4, 5)) /...
    (0.5 * synRecordNum * (counts(3, 1) + counts(4, 1)));

Er = (counts(1, 3) + counts(2, 2)) /...
    (counts(1, 2) + counts(1, 3) + counts(2, 2) + counts(2, 3));

Ed = (counts(3, 5) + counts(4, 4)) /...
    (counts(3, 4) + counts(3, 5) + counts(4, 4) + counts(4, 5));

Q = (Qr + Qd) / 2;

E = (Er + Ed) / 2;

