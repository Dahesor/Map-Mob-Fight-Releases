scoreboard players add #mapID calculator 1
execute if score #mapID calculator = #currentMap calculator run function map:graveyard/metadata
schedule function lobby:map_selection/clear_field 1s