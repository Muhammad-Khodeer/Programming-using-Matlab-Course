function coded = replace(p,c1,c2)

for i = 1:length(p);
    for j = 1:length(p{i})
       if(p{i}(j) == c1)
           p{i}(j) = c2;
       end
    end
end




coded = p;
end