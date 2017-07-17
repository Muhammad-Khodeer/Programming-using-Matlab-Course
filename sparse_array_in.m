function A = sparse_array_in(filename)
    A = [] ;
    fidd = fopen(filename,'r');
    if fidd < 0
       A = [];
        %error('error opening file %s\n',filename);
    else
    
        dims = fread(fidd,2,'uint32');
        nonZero = fread(fidd,1,'uint32');
       % Myarray = fread(fidd,'double');
        x = dims(1);
        y = dims(2);
        A(x,y) = 0;

        for i = 1:nonZero
                indexx = fread(fidd,1,'uint32');
                indexy = fread(fidd,1,'uint32');
                value = fread(fidd,1,'double');

                A(indexx,indexy) = value;
        end
        fclose(fidd);
    end

end