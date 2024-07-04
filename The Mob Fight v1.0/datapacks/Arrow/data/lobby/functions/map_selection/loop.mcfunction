scoreboard players add #currentMap calculator 1
scoreboard players set #mapID calculator 0
execute if score #currentMap calculator matches 0 run scoreboard players set #currentMap calculator 1
data remove storage run map
function #map:loop
playsound ui.button.click master @a ~ ~ ~
scoreboard players operation #mapCache calculator = #currentMap calculator
execute if score #currentMap calculator = #mapID calculator run scoreboard players set #currentMap calculator 0
data modify block 3 57 96 front_text.messages[1] set value '{"nbt":"map.displayName","storage": "run","interpret": true}'
execute if predicate lobby:map_id_error run function lobby:map_selection/error/fix
