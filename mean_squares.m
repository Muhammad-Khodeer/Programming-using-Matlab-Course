function mm = mean_squares(nn)
x = 1:1:nn;
x = x .* x;
mm = sum(x)/nn;