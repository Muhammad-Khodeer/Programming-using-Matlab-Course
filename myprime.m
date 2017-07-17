function a=myprime(n)
a=1;
if n==2
    a=1;
end
for i=2:n/2
    if(mod(n,i)==0)
        a=0;
    end
        
end