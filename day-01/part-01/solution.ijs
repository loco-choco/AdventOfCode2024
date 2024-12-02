writetable =: 4 : '(toHOST,(": x),"1 LF) 1!:2 y'
readtable =: 3 : '>0 ". each cutopen toJ 1!:1 y'

fn =. < 'data'
data =. readtable fn
echo +/ | (/:~ 1 {  |: data) - (/:~ 0 { |: data )
exit ''
