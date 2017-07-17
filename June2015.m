function p = June2015
for i = 1:30
    [DateNumber, DateName] = weekday(datenum([2015 6 i]));
   
    p{i, 1} =  'June';
    p{i, 2} = i;
    p{i, 3} = DateName;

end