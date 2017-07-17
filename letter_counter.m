function N = letter_counter(filename)
N = 0;
fid = fopen(filename,'rt');
if fid < 0
    N = -1;
else
    oneline = fgets(fid);
    while ischar(oneline)

        for i = 1:length(oneline)
            if (isletter(oneline(i)))
                N = N + 1;
            end
        end

        oneline = fgets(fid);
    end
    fclose(fid);
end
end
