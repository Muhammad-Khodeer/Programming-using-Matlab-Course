function a=movies(h1,m1,d1,h2,m2,d2)
v1= h1*60+m1+d1;
v2=h2*60+m2; 
v3=v2-v1;
if(v3<0 ||v3>30)
    a=0;
else
    a=1;
    

end
end