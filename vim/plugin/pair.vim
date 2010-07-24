function! InAnEmptyPair()
let cur = strpart(getline('.'),getpos('.')[2]-2,2)
for pair in (split(&matchpairs,',') + ['":"',"':'"])
if cur == join(split(pair,':'),'')
return 1
endif
endfor
return 0
endfunc

function! DeleteEmptyPairs()
if InAnEmptyPair()
return "\<Left>\<Del>\<Del>"
else
return "\<BS>"
endif
endfunc
