function A = hulk(v)
col1 = v
col2 = (v' .* v')'
col3 = (v' .* v' .* v')'

A = [col1; col2; col3]';

end