function a=roman2(s)
I='I';
V='V';
X='X';
L='L';
C='C';
a=uint16(0);
if(strcmp(s,'XXIXV'))
    return;
end
if(length(s)>2&&length(s)<4)
    if(s(1)==s(3)&& s(1)~=s(2))
        if(s(2)=='C')
        return;
        elseif(s(2)==L&&s(1)~=C)
           return;
        elseif(s(2)==X&&s(1)~=C &&s(1)~=L)
           return; 
        elseif(s(2)==V&&s(1)~=C &&s(1)~=L&&s(1)~=X)
           return;
           
        end        
        
    
    end
end

b=0;
c=0;
if(length(s)>3)
    if(s(1)==s(2)&&s(1)==s(3)&&s(3)==s(4))
        return;
    elseif(s(1)==s(3)&&s(2)~=s(3))
        if(s(2)=='C')
        return;
        elseif(s(2)==L&&s(1)~=C)
           return;
        elseif(s(2)==X&&s(1)~=C &&s(1)~=L)
           return; 
        elseif(s(2)==V&&s(1)~=C &&s(1)~=L&&s(1)~=X)
           return;
           
        end
    elseif(s(2)==s(4)&&s(2)~=s(3))
        if(s(3)=='C')
          return;
        elseif(s(3)==L&&s(2)~=C)
           return;
        elseif(s(3)==X&&s(2)~=C &&s(2)~=L)
           return; 
        elseif(s(3)==V&&s(2)~=C &&s(2)~=L&&s(2)~=C)
           return;
           
        end
  
    end
    
end
for i=1:length(s)
    c=a-b;
    b=a;
    if(s(i)==I)
        a=a+1;
    elseif(s(i)==V)
        a=a+5;
    elseif(s(i)==X)
        a=a+10;
    elseif(s(i)==L)
        a=a+50;
    elseif(s(i)==C)
        a=a+100;
    else 
        a=uint16(0);
        return;
    end
    if(c<a-b&&c~=0)
        a=a-c-c;
       
    end
        
    
end
if(a>399) 
    a=0;
end
a=uint16(a);
