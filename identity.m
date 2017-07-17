function A = identity(n)
    A = zeros(n, n);
    for R = 1:n
        A(R, R) = 1;
    end

end