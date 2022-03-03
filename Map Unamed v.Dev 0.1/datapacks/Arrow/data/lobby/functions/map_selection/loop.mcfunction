scoreboard players add #currentMap calculator 1
scoreboard players set #mapID calculator 0
data remove storage run map
function #map:loop
execute if score #currentMap calculator >= #mapID calculator run scoreboard players set #currentMap calculator 0
data modify block 5 57 90 Text2 set value '{"nbt":"map.displayName","storage": "run","interpret": true}'
playsound ui.button.click master @a ~ ~ ~