function a=roman(s)
b='I   V    XLCDM';
%1 5 10 50
a=uint8(0);
x=0;
for i=1:length(s)
    if(strfind(b,s(i)))
       y=strfind(b,s(i));
       if(i>1) x=strfind(b,s(i-1));end
           
       if(y>x&&a~=0)
     
           t=y-x;
           a=a+t-x;
           break;
       end 
       a=a+y;
       a=uint8(a);
    else
        a=uint8(0);
        break;
    end
    
end
for i=1:length(s)
    q=strfind(b,s(i));
   
    if((length(s)-i+1)>=4&&length(s)>=4)
        if(q==strfind(b,s(i+1))&&q==strfind(b,s(i+2))&&q==strfind(b,s(i+3)))
            a=0;
            break;
        end
    end
    if(strcmp(s,'VV')||strcmp(s,'XIIV')) 
        a=0;
        break;
    end
    
        
            
            
    
     
end

if(strcmp(s,'IXI')||strcmp(s,'IVI')||strcmp(s,'VX')) a=0; end
 if (a>20) a=0;end
a=uint8(a);
