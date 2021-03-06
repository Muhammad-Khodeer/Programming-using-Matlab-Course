function indices = saddle(M)

indices = [];
[Rows , Colms] = size(M);

%Get Max at Rows ??? ???? ?????? ?????? ?? ?? ?? ????? ?? ??????
for i = 1:Rows
    max = M(i,1);
    for j = 2:Colms
        if (M(i,j) > max) 
            max = M(i,j);
        end
    end
    maxRows(i) = max;   
end

%Get Max at Rows ??? ???? ?????? ?????? ?? ?? ???? ????? ?? ?????? ?????
for j = 1:Colms
    min = M(1,j);
    for i = 2:Rows
        if (M(i,j) < min) 
            min = M(i,j);
        end
    end
    minColms(j) = min;   
end


e=1;
for j = 1:Colms
    for i = 1:Rows
        % ?? ???? ???? ???? ?? ?????????? ???? ??? ??????
        if( M(i,j) >= maxRows(i) && M(i,j) <= minColms(j))
            indices(e,1) = i;
            indices(e,2) = j;
            e = e+1;
        end
        
    end
end

