function p = prime_pairs(n)
p = -1;
for i = 1:100000
    if (isprime(i))
        if (isprime(i+n))
            p=i;
            break;
        end
    end
end