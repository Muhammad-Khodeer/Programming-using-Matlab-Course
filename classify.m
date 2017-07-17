function a=classify(x)   
z=size(x);
if z(1)==0 || z(2)==0
    a=-1;
elseif z(1)==1 && z(2)==1
    a=0;
elseif (z(1)==1) || (z(2)==1)
    a=1;
else
    a=2;
end
    
end