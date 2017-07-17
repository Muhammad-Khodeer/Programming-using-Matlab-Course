function c = pitty(ab)

ab = ab .* ab;
a = ab(:,1);
b = ab(:,2);
y = a + b;
c = sqrt(y);

end