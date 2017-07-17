function a=neighbor(v)
z =size(v);
a=zeros(1,z(2)-1);
for ii=1:z(2)-1
    a(ii)= abs(v(ii+1)-v(ii));
end
if(z(2)<2||z(1)>1)
    a=[];
end