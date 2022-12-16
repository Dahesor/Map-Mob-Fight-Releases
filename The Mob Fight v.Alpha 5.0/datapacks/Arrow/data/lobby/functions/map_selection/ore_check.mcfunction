data remove storage run holder
data modify storage run holder.red set from storage run map.ore.red
data modify storage run holder.blue set from storage run map.ore.blue
scoreboard players set $$# calculator 1
execute unless data storage run holder.red[10] run scoreboard players set $$# calculator 0
execute unless data storage run holder.blue[10] run scoreboard players set $$# calculator 0
execute if score $$# calculator matches 0 run function lobby:map_selection/error/invalid_ore_pos
execute unless score $$# calculator matches 0 run function lobby:map_selection/success