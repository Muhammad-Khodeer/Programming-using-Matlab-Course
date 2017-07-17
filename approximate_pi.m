function [pii, k] =  approximate_pi(delta)
pii = (sqrt(12));
diff = abs(pii - pi);
k = 0;

while(delta < diff )
    k = k + 1; 
    pii = pii + ((sqrt(12))*((-3).^(-k))/(k+k+1));
    if(abs(pii - pi)<delta)
        break;
    end
    diff = abs(pii - pi);
         
end