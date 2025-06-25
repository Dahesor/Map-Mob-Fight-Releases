data modify entity @s Pos set from storage run map.villager.blue.Pos[0]
execute at @s unless entity @e[type=marker,tag=villager_blue,distance=..3,tag=!no_villager] run return 1
function game:run/netherite/villager/rotate
data modify entity @s Pos set from storage run map.villager.blue.Pos[0]
execute at @s unless entity @e[type=marker,tag=villager_blue,distance=..3,tag=!no_villager] run return 2
function game:run/netherite/villager/rotate
data modify entity @s Pos set from storage run map.villager.blue.Pos[0]