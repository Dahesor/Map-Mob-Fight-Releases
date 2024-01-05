$scoreboard players set #time calculator $(time)

execute if score #time calculator matches 1 run summon villager -3 45 -119 {NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["tut5"],Rotation:[0f,0f]}
execute if score #time calculator matches 8 run summon villager 4 45 -119 {NoAI:0b,Invulnerable:1b,Tags:["tut5","tut5_use"],Rotation:[90f,0f]}
execute if score #time calculator matches 8 run summon zombie 4 45 -117 {Invulnerable:1b,Tags:["tut5"],Rotation:[180f,0f]}

execute if score #time calculator matches 6 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 6 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.title","color": "gold","bold": true}
execute if score #time calculator matches 6 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.1","color": "aqua"}
execute if score #time calculator matches 12 run data merge entity @e[type=villager,limit=1,tag=tut5_use] {NoAI:0b}

execute if score #time calculator matches 60 run data merge entity @e[type=zombie,limit=1,tag=tut5] {NoAI:1b,Silent:1b}
execute if score #time calculator matches 60 run kill @e[type=villager,limit=1,tag=tut5_use]

execute if score #time calculator matches 80 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 80 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.2","color": "aqua"}

execute if score #time calculator matches 85 run summon item -3 45 -116 {Item:{id:"netherite_ingot",Count:1b},Glowing:1b,Invulnerable:1b,PickupDelay:30000s,Tags:["tut5"]}
execute if score #time calculator matches 85 run particle cloud -3 45 -116 1 0 1 0.12 30 force @a
execute if score #time calculator matches 85 positioned ~-4 ~-2 ~ run playsound entity.firework_rocket.blast_far master @a[dx=8, dy=6, dz=8]


execute if score #time calculator matches 180 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 180 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.3","color": "aqua"}
execute if score #time calculator matches 220..245 run data merge entity @e[type=villager,limit=1,tag=tut5] {Motion:[0.0d,0.0d,0.15d],NoAI:0b}
execute if score #time calculator matches 245 run data merge entity @e[type=villager,limit=1,tag=tut5] {Motion:[0.0d,0.0d,0.0d],NoAI:1b}
execute if score #time calculator matches 245 run kill @e[type=item,limit=1,tag=tut5]
execute if score #time calculator matches 245 positioned ~-4 ~-2 ~ run playsound entity.item.pickup master @a[dx=8, dy=6, dz=8] ~ ~ ~ 1 1 1

execute if score #time calculator matches 270 run function lobby:tutorial/sound_over_up
execute if score #time calculator matches 270 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.4","color": "aqua"}



execute if score #time calculator matches 290 run function lobby:tutorial/netherite/end