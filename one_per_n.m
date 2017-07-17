function  m =  one_per_n(x)
d=0;n=1;
while(d<x )
    d = d + 1/n;
    m = n;
    n = n+1 ;
    
    if (n>10001)
        m = -1;
        break;
    end
    
end

end