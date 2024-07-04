$scoreboard players set #time calculator $(time)

execute if score #time calculator matches 6 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 6 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.vand.title","color": "gold","bold": true}
execute if score #time calculator matches 6 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.vand.1","color": "aqua"}

execute if score #time calculator matches 60 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 60 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.vand.2","color": "aqua"}


execute if score #time calculator matches 120 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 120 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.vand.3","color": "aqua"}


execute if score #time calculator matches 120 run summon armor_stand 10.50 45.40 -117.50 {Marker:1b,Invisible:1b,Tags:["tut6"],CustomName:'["",{"translate":"action.drop","color": "green"}," ",{"translate":"netherite.nn"}," ",{"translate":"action.pull","color": "green","with": ["3"]}]',CustomNameVisible:1b}
execute if score #time calculator matches 120 run summon armor_stand 10.50 45.20 -117.50 {Marker:1b,Invisible:1b,Tags:["tut6","tut6_use"],CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"iron","with":["32"]}," ",{"translate":"action.pull","color": "green","with": ["1"]}]',CustomNameVisible:1b}

execute if score #time calculator matches 180 run kill @e[type=armor_stand,limit=1,tag=tut6_use]
execute if score #time calculator matches 180 run summon armor_stand 10.50 45.20 -117.50 {Marker:1b,Invisible:1b,Tags:["tut6","tut6_use"],CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"diamond","with":["26"]}," ",{"translate":"action.pull","color": "green","with": ["1"]}]',CustomNameVisible:1b}
execute if score #time calculator matches 180 run particle cloud 10.50 45.20 -117.50 1 0 1 0.12 30 force @a


execute if score #time calculator matches 240 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 240 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.vand.4","color": "aqua"}


execute if score #time calculator matches 280 run summon item 10.50 46.5 -117.50 {Item:{id:"diamond",Count:26b},PickupDelay:31000,Invulnerable:1b,Tags:["tut6"]}
execute if score #time calculator matches 295 run kill @e[type=item,tag=tut6]
execute if score #time calculator matches 295 run summon item 10.50 45.2 -117.50 {Item:{id:"warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:4}},PickupDelay:31000,Invulnerable:1b,Tags:["tut6"],Glowing:1b}
execute if score #time calculator matches 295 run setblock 10 44 -118 polished_granite_slab[type=double]
execute if score #time calculator matches 305 run setblock 10 44 -118 granite_slab[type=double]





execute if score #time calculator matches 320 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 320 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.vand.5","color": "aqua"}

execute if score #time calculator matches 360 run function lobby:tutorial/sound_over_up
execute if score #time calculator matches 360 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.vand.6","color": "light_purple"}

execute if score #time calculator matches 360 run function lobby:tutorial/vand/end