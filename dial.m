function coded = dial(txt)
s = length(txt);
for i = 1:s
    if( txt(i) == '*' || txt(i) == '#' || txt(i) == ' ' ||(txt(i) >= '0' && txt(i) <= '9'))
        txt(i)= txt(i);
    elseif ( txt(i)=='A' || txt(i)=='B' || txt(i)=='C' )
        txt(i) = '2';
    elseif ( txt(i)=='D' || txt(i)=='E' || txt(i)=='F' )
        txt(i) = '3';
    elseif ( txt(i)=='G' || txt(i)=='H' || txt(i)=='I' )
        txt(i) = '4';
    elseif ( txt(i)=='J' || txt(i)=='K' || txt(i)=='L' )
        txt(i) = '5';
    elseif ( txt(i)=='M' || txt(i)=='N' || txt(i)=='O' )
        txt(i) = '6';
    elseif ( txt(i)=='P' || txt(i)=='R' || txt(i)=='S' )
        txt(i) = '7';
    elseif ( txt(i)=='T' || txt(i)=='U' || txt(i)=='V' )
        txt(i) = '8';
    elseif ( txt(i)=='W' || txt(i)=='X' || txt(i)=='Y' )
        txt(i) = '9';
    elseif ( txt(i)=='(' || txt(i)==')' || txt(i)=='-' )
        txt(i) = ' ';
    else
        txt = '';
        break;
    end
end




coded = char(txt);
end