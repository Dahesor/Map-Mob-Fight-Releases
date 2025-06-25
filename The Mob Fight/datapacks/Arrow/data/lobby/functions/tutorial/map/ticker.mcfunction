$scoreboard players set #time calculator $(time)


execute if score #time calculator matches 1 run setblock 19 46 -90 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"切换游戏模式","color": "green"}','""','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}
execute if score #time calculator matches 1 run data modify block 19 46 -90 front_text.messages[1] set value '{"translate": "gamemode.0","color": "green"}'
execute if score #time calculator matches 1 run setblock 19 46 -86 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"切换地图","color": "green","clickEvent": {"action": "run_command","value": "/function lobby:map_selection/loop"}}','{"nbt":"map.displayName","storage": "run","interpret": true}','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}

execute if score #time calculator matches 6 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.title","color": "gold","bold": true}
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.1","color": "aqua"}

execute if score #time calculator matches 60 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 60 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.2","color": "aqua"}

execute if score #time calculator matches 110 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 110 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.3","color": "aqua"}

execute if score #time calculator matches 170 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 170 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.4","color": "aqua"}

execute if score #time calculator matches 230 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 230 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.5","color": "aqua"}

execute if score #time calculator matches 280 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 280 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.6","color": "aqua"}

execute if score #time calculator matches 330 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 330 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.7","color": "aqua"}

execute if score #time calculator matches 380 run function lobby:tutorial/sound_over_right
execute if score #time calculator matches 380 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.map.8","color": "aqua"}


execute if score #time calculator matches 400 run function lobby:tutorial/map/end