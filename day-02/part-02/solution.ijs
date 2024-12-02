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
checkascx =: dyad : 0
  part  =. (x{.y) , (>:x)}.y 
  spart =. subshift part
  res   =. compasc spart
)
checkdscx =: dyad : 0
  part  =. (x{.y) , (>:x)}.y 
  spart =. subshift part
  res   =. compdsc spart
)

checkasc =: 3 : 0
  res =. +./ */  |: (i.$y) checkascx"0 1 y
)

checkdsc =: 3 : 0
  res =. +./ */  |: (i.$y) checkdscx"0 1 y
)

fn =. < 'data'
data =: readbox fn
asc =: */ each checkasc each data
dsc =: */ each checkdsc each data
echo +/ (;asc) +. ;dsc
exit ''
