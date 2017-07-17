function state = queen_check(board)
    
    state = true;
    %input is an 8*8 matrix of zeros and ones [true & false]

    %any sum Row > 1 ... state = false
    for i = 1:8
        sumRow = 0;
        for j = 1:8
            sumRow = sumRow + board(i,j);
        end
        if (sumRow > 1) state = false; end
    end
    %any sum Colms > 1 ... state = false
    for j = 1:8
        sumColm = 0;
        for i = 1:8
            sumColm = sumColm + board(i,j);
        end
        if (sumColm > 1) state = false; end
    end
    %any sum diagonal1 > 1 ... state = false
    for i = 1:8
        part = board((9-i):8,1:i);
        if ((sum(diag(part))) > 1) state = false; end 
    end
    
    for i = 8:-1:1
        part = board(1:9-i,i:8);
        if ((sum(diag(part))) > 1) state = false; end 
    end
    
    %any sum diagonal2 > 1 ... state = false  // done
    for i = 8:-1:1
        part = board(8:-1:i,i:8);
        if ((sum(diag(part))) > 1) state = false; end 
    end

 %------------------------------------------
    for i = 1:8
        part = board(i:-1:1,1:i);
        if ((sum(diag(part))) > 1) state = false; end 
    end

end