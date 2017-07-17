function ss=halfsum(a)
ss=0;
[r, c]=size(a);
for i=1:r
    for j=1:c
        if(i==j||j>i)
            ss = ss +a(i,j);
        end
    end
end