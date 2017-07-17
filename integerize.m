%{
      int8            -- 8-bit signed integer array     
      uint8           -- 8-bit unsigned integer array    // 0 to 255
      int16           -- 16-bit signed integer array
      uint16          -- 16-bit unsigned integer array   // 0 to 65535
      int32           -- 32-bit signed integer array
      uint32          -- 32-bit unsigned integer array   // 0 to 4294967295
      int64           -- 64-bit signed integer array
      uint64          -- 64-bit unsigned integer array   // 0 to 18446744073709551615
%}
function [type] = integerize(A)

[Rows, Colms] = size(A);
max = 0;

for i = 1:Rows
    for j = 1:Colms
        if A(i, j) > max;
        max = A(i, j);
        end
    end
end


if max > (intmax('uint64'))
    type = 'NONE';     
elseif max > (intmax('uint32'))
    type = 'uint64';
elseif max > (intmax('uint16'))
    type = 'uint32';
elseif max > (intmax('uint8'))
    type = 'uint16';
else
    type = 'uint8';

end 
    
end