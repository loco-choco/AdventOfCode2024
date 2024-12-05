NB. State Machine Classes
NB. 0 - others
NB. 1 - m
NB. 2 - u
NB. 3 - l
NB. 4 - (
NB. 5 - 0123456789
NB. 6 - ,
NB. 7 - )
m =: a. e. 'mul(0123456789,)'
m =: m + a. e. 'ul(0123456789,)'
m =: m + a. e. 'l(0123456789,)'
m =: m + a. e. '(0123456789,)'
m =: m + a. e. '0123456789,)'
m =: m + a. e. ',)'
m =: m + a. e. ')'
NB. State Machine States and Transitions
NB. Ini --1--> M --2--> U --3--> L --4--> ( --5--> N1 --6--> , --5--> N2 --7--> ) 
NB.            /\                            /\_5|             /\_5|            |
NB.            |________________________________1_______________________________|
NB. Any other transition is invalid, and resets to Ini
NB. 9 States x 8 classes
NB.             0    1    2    3    4    5    6    7
s =:   1 8 2 $ 0 0  1 0  0 0  0 0  0 0  0 0  0 0  0 0  NB. Ini  0
s =: s , 8 2 $ 0 0  0 0  2 0  0 0  0 0  0 0  0 0  0 0  NB. M    1 
s =: s , 8 2 $ 0 0  0 0  0 0  3 0  0 0  0 0  0 0  0 0  NB. U    2
s =: s , 8 2 $ 0 0  0 0  0 0  0 0  4 0  0 0  0 0  0 0  NB. L    3
s =: s , 8 2 $ 0 0  0 0  0 0  0 0  0 0  5 1  0 0  0 0  NB. (    4
s =: s , 8 2 $ 0 0  0 0  0 0  0 0  0 0  5 0  6 0  0 0  NB. N1   5
s =: s , 8 2 $ 0 0  0 0  0 0  0 0  0 0  7 0  0 0  0 0  NB. ,    6
s =: s , 8 2 $ 0 0  0 0  0 0  0 0  0 0  7 0  0 0  8 3  NB. N2   7
s =: s , 8 2 $ 0 0  1 0  0 0  0 0  0 0  0 0  0 0  0 0  NB. )    8
echo +/ */ |: ". > (0;s;m;0 _1 0 0) ;: 1!:1 < 'data'
exit ''
