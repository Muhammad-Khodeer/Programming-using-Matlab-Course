function theSum = square_wave(n)
t = linspace(0, 4*pi, 1001);
for tIndex = 1 : length(t)
 this_t = t(tIndex);
 k = 1 : n;
 numerator = sin(this_t * (2*k-1));
 denominator = 2 * k - 1;
 theSum(tIndex) = sum(numerator ./ denominator);
end