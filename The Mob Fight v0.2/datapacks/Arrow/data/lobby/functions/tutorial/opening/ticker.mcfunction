$scoreboard players set #time calculator $(time)


execute if score #time calculator matches 10 run function lobby:tutorial/sound_text
execute if score #time calculator matches 10 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.title","color": "gold","bold": true}
execute if score #time calculator matches 10 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.1","color": "aqua"}
execute if score #time calculator matches 70 run function lobby:tutorial/sound_text
execute if score #time calculator matches 70 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.2","color": "aqua"}

execute if score #time calculator matches 130 run function lobby:tutorial/sound_text
execute if score #time calculator matches 130 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.3","color": "aqua"}
execute if score #time calculator matches 130 run summon villager -19.0 45.0 -74.50 {Rotation:[180f,0f],Tags:["tut1"],NoAI:1b,Silent:1b}
execute if score #time calculator matches 130 run summon villager -19.0 45.0 -80.50 {Rotation:[0f,0f],Tags:["tut1","tut1_2"],NoAI:1b}
execute if score #time calculator matches 13 at @e[type=villager,tag=tut1] run particle cloud ~ ~0.5 ~ 1 0 1 0 30 force @a


execute if score #time calculator matches 180 run function lobby:tutorial/sound_text
execute if score #time calculator matches 180 run summon item -19.0 46.2 -76 {Item:{id:"tipped_arrow",Count:1b,tag:{CustomModelData:101}},PickupDelay:2341s,Invulnerable:1b,NoGravity:1b,Glowing:1b,Tags:["tut1"]}
execute if score #time calculator matches 180 run particle cloud -19.0 46.2 -76 1 0 1 0.1 30 force @a
execute if score #time calculator matches 180 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.4","color": "aqua"}

execute if score #time calculator matches 260 run function lobby:tutorial/opening/shoot_arrow

execute if score #time calculator matches 290 run data merge entity @e[type=item,limit=1,tag=tut1] {Motion:[0.0d,0.0d,-0.5d]}
execute if score #time calculator matches 300 at @e[type=item,tag=tut1] run summon zombie ~ ~ ~0.5 {Tags:["tut1"]}
execute if score #time calculator matches 300 run data merge entity @e[type=villager,tag=tut1_2,limit=1] {NoAI:0b}
execute if score #time calculator matches 300 run kill @e[type=item,tag=tut1]
execute if score #time calculator matches 330 run kill @e[type=villager,tag=tut1_2]
execute if score #time calculator matches 330 run data merge entity @e[type=zombie,tag=tut1,limit=1] {NoAI:1b,Silent:1b}
 
execute if score #time calculator matches 370 run function lobby:tutorial/sound_text
execute if score #time calculator matches 370 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.6","color": "aqua"}

execute if score #time calculator matches 410 run function lobby:tutorial/sound_text
execute if score #time calculator matches 410 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.7","color": "aqua"}

execute if score #time calculator matches 450 run function lobby:tutorial/sound_text
execute if score #time calculator matches 450 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.8","color": "aqua"}
execute if score #time calculator matches 450 run summon text_display -19.0 47.3 -74.50 {text:'{"text":"+200","color": "gold"}',billboard:"center",brightness:{block:15,sky:15},transformation:{scale:[2f,2f,2f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:["tut1"]}

execute if score #time calculator matches 500 run function lobby:tutorial/sound_text
execute if score #time calculator matches 500 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.9","color": "aqua"}
execute if score #time calculator matches 500 run summon text_display -19.0 48.3 -74.50 {text:'{"text":"Victory","color": "gold"}',billboard:"center",brightness:{block:15,sky:15},transformation:{scale:[3f,3f,3f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:["tut1"]}

execute if score #time calculator matches 550 run function lobby:tutorial/sound_over
execute if score #time calculator matches 550 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.opening.10","color": "aqua"}


execute if score #time calculator matches 570 run function lobby:tutorial/opening/end