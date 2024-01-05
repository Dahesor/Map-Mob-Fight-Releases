$scoreboard players set #time calculator $(time)

execute if score #time calculator matches 6 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.title","color": "gold","bold": true}
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.1","color": "aqua"}

execute if score #time calculator matches 50 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 50 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.2","color": "aqua"}

execute if score #time calculator matches 90 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 90 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.3","color": "aqua"}

execute if score #time calculator matches 130 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 130 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.4","color": "aqua"}

execute if score #time calculator matches 170 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 170 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.5","color": "aqua"}

execute if score #time calculator matches 210 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 210 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.6","color": "aqua"}

execute if score #time calculator matches 250 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 250 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.7","color": "aqua"}

execute if score #time calculator matches 290 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 290 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.8","color": "aqua"}

execute if score #time calculator matches 330 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 330 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.8.5","color": "aqua"}

execute if score #time calculator matches 370 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 370 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.9","color": "light_purple","clickEvent": {"action": "open_url","value": "https://discord.gg/b3g7VdAY8S"},"underlined":true}

execute if score #time calculator matches 400 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 400 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.10","color": "aqua"}

execute if score #time calculator matches 430 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 430 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.11","color": "light_purple","underlined": true,"clickEvent": {"action": "open_url","value": "https://github.com/Dahesor/Map-Mob-Fight-Releases"}}

execute if score #time calculator matches 460 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 460 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.12","color": "aqua","clickEvent": {"action": "copy_to_clipboard","value": "ing.adm21@gmail.com"},"hoverEvent": {"action": "show_text","contents": {"translate":"copy_click","color": "white","italic": false}}}

execute if score #time calculator matches 490 run function lobby:tutorial/sound_over_right
execute if score #time calculator matches 490 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.creator.13","color": "gold"}


execute if score #time calculator matches 500 run function lobby:tutorial/creator/end