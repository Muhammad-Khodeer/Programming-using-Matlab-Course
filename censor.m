function ss=censor(str,sub)
m=1;
ss=[];
for i=1:length(str)
      if(strfind(str{i},sub))
         str{i}=str{i};
      else
           ss{m}=str{i};
           m=m+1;
      end
      

end