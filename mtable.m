function [mt, s] = mtable(n, m)
    for R = 1:n
        for C = 1:m
            A(R,C) = (R*C);
        end
    end

    mt = A;
    s = sum(sum(A));
end