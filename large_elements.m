function s = large_elements(a)
[r,c]=size(a);
s=[];
for i=1:r
    for j=1:c
        if((i+j)<a(i,j))
            s=[s;i j];
        end
    end
end