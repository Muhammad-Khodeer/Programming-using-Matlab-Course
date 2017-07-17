function w = replace_me(v,a,b,c)

if nargin==3
    c=b;
elseif nargin ==2
     c=0;
     b=0;
end

x = false;
d = 0;


for i = 1:length(v)
    if (v(i) == a )
        w(i+d) = b;
        w(i+1+d) = c;
        x = true;
        d = d + 1 ;

    elseif (v(i) ~= a)
        if (x == false)
        w(i + d) = v (i);

        elseif (x == true)
        w(i+d) = v (i);
        x = false;
        end
    end
end

end

