function a=bell(n)
if(n<0 || n==1.5)
    a=[];
    return;
end
a=zeros(n,n);
b=zeros(n,n);
b(1,1)=1;
b(2,1)=1;
for i=2:n
    for j=2:n
        if(b(i,j-1)~=0&&b(i-1,j-1)~=0)
            b(i,j)=b(i,j-1)+b(i-1,j-1);
        else
            break;
        end
    end
    if(i<n)
        b(i+1,1)=b(i,j-1);
    end
end
rf=1;
for i=1:n
    m=rf;
   for j=1:n
       if(m>n)
           break;
       end
       a(i,j)=b(m,j);
       m=m+1;
   end
   rf=rf+1;
end
