scoreboard players add #mapID calculator 1
execute if score #mapID calculator = #currentMap calculator run function map:stone_land/metadata
schedule function lobby:map_selection/load_map 1s