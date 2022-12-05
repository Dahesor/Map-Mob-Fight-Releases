scoreboard players add #currentMap calculator 1
scoreboard players set #mapID calculator 0
execute if score #currentMap calculator matches 0 run scoreboard players set #currentMap calculator 1
data remove storage run map
function #map:loop
scoreboard players operation #mapCache calculator = #currentMap calculator
execute if score #currentMap calculator = #mapID calculator run scoreboard players set #currentMap calculator 0
data modify block 5 57 90 Text2 set value '{"nbt":"map.displayName","storage": "run","interpret": true}'
playsound ui.button.click master @a ~ ~ ~
execute if predicate lobby:map_id_error run function lobby:map_selection/error/fix