writetable =: 4 : '(toHOST,(": x),"1 LF) 1!:2 y'
readtable =: 3 : '>0 ". each cutopen toJ 1!:1 y'

fn =. < 'data'
data =: readtable fn
ser =. 1 { |: data NB. Collumn to be searched
ref =. 0 { |: data NB. Collumn to be used as ref
echo +/ (+/"1 (ser&e.)"0 ref ) * ref
exit ''
