setblock ~1 ~ ~ oak_button[face=wall,facing=east]
function lobby:tutorial/gray_left
data remove storage lobby:data tutorial[{name:"dirt"}]
fill -22 43 -95 -18 43 -102 air
fill -19 45 -99 -21 49 -101 air
kill @e[tag=tut3]