xmasamx =: 3 : 0
  xmas =. 'XMAS' (0:)`(+/@:E.)@.(4 <: $y) y
  smax =. 'SAMX' (0:)`(+/@:E.)@.(4 <: $y) y
  xmas + smax
)
data =: > cutopen 1!:1 < 'data'
echo +/ > xmasamx each (</. |. data) , (</. data) , (;/ |: data) , (;/ data)
exit ''
