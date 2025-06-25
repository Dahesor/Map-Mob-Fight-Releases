setblock ~ ~ ~1 oak_button[face=wall,facing=south]
function lobby:tutorial/gray_up
data remove storage lobby:data tutorial[{name:"netherite"}]
kill @e[tag=tut6]