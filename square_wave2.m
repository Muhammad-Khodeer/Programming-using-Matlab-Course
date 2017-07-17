function v = square_wave2(n)

step = 4*pi/1001;
t=0;
sum = 0;

for i = 1:1001
    
    
    for k = 1:n
        sum = sum + ( ( sin(((2.*k)-1).*t) )./((2.*k)-1));
    end
    
    t = t + step;
    v(i) = sum ;
    
end


end