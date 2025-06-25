setblock ~1 ~ ~ oak_button[face=wall,facing=east]
function lobby:tutorial/gray_left
data remove storage lobby:data tutorial[{name:"mine"}]
kill @e[type=item,x=-24,y=41,z=-95,dx=15,dy=15,dz=15]
kill @e[tag=tut2]

setblock -18 45 -85 stone
setblock -22 48 -89 stone