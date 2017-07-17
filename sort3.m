function a=sort3(x,y,z)
if x==y&&y==z, a=[x y z];end 
if x>=y && x>=z
    if y>z
      a=[z y x];
    else
      a=[y z x];
    end
elseif y>=x && y>=z
    if x>z
        a=[z x y];
    else
        a=[x z y];
    end
elseif z>=x && z>=y
    if x>y
        a=[y x z];
    else 
        a=[x y z];
    end
    
            
end