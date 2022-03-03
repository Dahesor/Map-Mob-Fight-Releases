data modify storage run map.ore.blue append from storage run map.ore.blue[0]
data remove storage run map.ore.blue[0]
scoreboard players remove #random calculator 1
execute if score #random calculator matches 1.. run function game:run/resources/loop_blue