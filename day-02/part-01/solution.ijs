readbox =: 3 : '0 ". each cutopen toJ 1!:1 y'
subshift =: 3 : 0 
  svec =. 1 |. y
  sub =. svec - y
  res =. (0,: ($sub) - 1)];.0 sub
)
compasc =: 3 : 0
  res =. (3 >: y) *. (y >: 1)
)
compdsc =: 3 : 0
  res =. (_1 >: y) *. (y >: _3)
)
andbox =: dyad : 0
  res =. x y 
)

fn =. < 'data'
data =: readbox fn
asc =: *./ each compasc each subshift each data
dsc =: *./ each compdsc each subshift each data
echo +/ (;asc) +. ;dsc
exit ''
