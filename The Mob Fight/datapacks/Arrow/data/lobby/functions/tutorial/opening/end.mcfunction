setblock ~1 ~ ~ oak_button[face=wall,facing=east]
function lobby:tutorial/gray_left
data remove storage lobby:data tutorial[{name:"opening"}]
kill @e[tag=tut1]
