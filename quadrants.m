function Q =  quadrants (n)
q1=ones(n);
q2=2.*ones(n);
q3=3.*ones(n);
q4=4.*ones(n);

x = combine(q1, q2);
x=x';
y = combine(q3, q4);
y=y';
Q = combine(x, y);
end