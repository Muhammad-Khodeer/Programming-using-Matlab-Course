function coded = codeit(txt)
s = length(txt);
for i = 1:s
    if ( txt(i) >= 'A' && txt(i) <= 'Z' )
        txt(i) = 'M' + ('M'-(txt(i))+1);
    elseif (txt(i) >= 'a' && txt(i) <= 'z')
        txt(i) = 'm' + ('m'-(txt(i))+1);
    end
end




coded = char(txt);
end