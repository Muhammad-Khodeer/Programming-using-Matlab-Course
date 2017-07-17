function Matrix = bottom_left (N, n)
x = size(N);
rows = x(1)-n+1:1:x(1) ;
colums = 1:1:n;
Matrix = N(  rows  ,  colums  );