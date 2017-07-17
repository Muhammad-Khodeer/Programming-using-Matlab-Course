function v = int_col(n)
s = (1:1:n)';
v = circshift(s,1);
end