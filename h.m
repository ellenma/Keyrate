function y = h(x)

if (x == 0 || x == 1)
    y = 0
else
    y = -x * log2(x) - (1 - x) * log2(1 - x)
end