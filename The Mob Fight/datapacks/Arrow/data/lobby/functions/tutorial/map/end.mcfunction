setblock ~-1 ~ ~ oak_button[face=wall,facing=west]
function lobby:tutorial/gray_right
data remove storage lobby:data tutorial[{name:"map"}]
setblock 19 46 -90 air
setblock 19 46 -86 air
kill @e[tag=tut8]