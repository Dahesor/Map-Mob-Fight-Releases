data modify storage run map.ore.red append from storage run map.ore.red[0]
data remove storage run map.ore.red[0]
scoreboard players remove #random calculator 1
execute if score #random calculator matches 1.. run function game:run/resources/loop_red