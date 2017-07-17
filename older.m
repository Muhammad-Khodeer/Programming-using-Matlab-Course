function a = older(y1, m1, d1, y2,m2, d2)

if(y1 == y2)
    if(m1 == m2)
        if(d1 == d2)
        a = 0;
        elseif(d1 > d2)
        a = -1;
        elseif(d1 < d2)
        a = 1;
        end
    elseif(m1 > m2)
        a = -1;
    elseif(m1 < m2)
        a = 1;
    end
elseif(y1 > y2)
        a = -1;
elseif(y1 < y2)
        a = 1;
end
end