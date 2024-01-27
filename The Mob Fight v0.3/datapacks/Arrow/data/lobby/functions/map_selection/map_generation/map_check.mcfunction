scoreboard players set $$# calculator 0
execute if data storage run map.Structures if data storage run map.Structures.Pathes[1] run scoreboard players set $$# calculator 1
execute if score $$# calculator matches 0 run function lobby:map_selection/error/no_map_found
execute unless score $$# calculator matches 0 run function lobby:map_selection/map_generation/map_path_check