function b = divvy(a, k)
z=logical(mod(a,k));
a(z)=a(z)*k;
b=a;