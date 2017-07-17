function [s,d]=separate_by_two(A)
s=[];
d=[];
z=logical(mod(A,2));
d=A(z);
d=d';
s=A(~(z));
s=s'