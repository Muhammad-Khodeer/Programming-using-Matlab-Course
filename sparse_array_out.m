function state = sparse_array_out(A,filename)

state = true;

fid = fopen(filename,'w+');
if fid < 0
    state = false;
    error('error opening file %s\n', filename);
end
[numRows, numColms] = size(A);
nonZero = nnz(A);
fwrite(fid,numRows,'uint32');
fwrite(fid,numColms,'uint32');
fwrite(fid,nonZero,'uint32');

for i = 1:numRows
    for j = 1:numColms
        
        if (A(i,j) ~= 0)
            fwrite(fid,i,'uint32');
            fwrite(fid,j,'uint32');
            fwrite(fid,A(i,j),'double');
        end
    end
end

fclose(fid);

%fwrite(fid,length(dims),'double');
%fwrite(fid,dims,'double');
%fwrite(fid,A,'double');
end