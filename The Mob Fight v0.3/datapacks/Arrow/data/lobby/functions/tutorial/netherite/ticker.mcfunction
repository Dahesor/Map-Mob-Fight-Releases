$scoreboard players set #time calculator $(time)

execute if score #time calculator matches 1 run summon villager -3 45 -119 {NoAI:1b,Invulnerable:1b,Silent:1b,Tags:["tut5"],Rotation:[0f,0f],VillagerData:{type:"minecraft:swamp"}}
execute if score #time calculator matches 8 run summon villager 4 45 -119 {NoAI:0b,Invulnerable:1b,Tags:["tut5","tut5_use"],Rotation:[90f,0f],VillagerData:{type:"minecraft:swamp"}}
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


execute if score #time calculator matches 145 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.3","color": "aqua"}
execute if score #time calculator matches 145 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 160 run summon villager 4 45 -119 {NoAI:0b,Tags:["tut5","tut5_net"],Rotation:[90f,0f],VillagerData:{type:"minecraft:plains"},Glowing:1b,CustomNameVisible:1b,CustomName:'{"text":"██████████","color": "red"}',Attributes:[{Name:"generic.max_health",Base:1000.0d}],Health:1000.0f}
execute if score #time calculator matches 160..240 run tp @e[type=villager,tag=tut5_net,limit=1] 4 45 -119
execute if score #time calculator matches 160 run data merge entity @e[type=zombie,limit=1,tag=tut5] {NoAI:0b,Silent:0b}

execute if score #time calculator matches 190 run data merge entity @e[type=villager,tag=tut5_net,limit=1] {CustomNameVisible:1b,CustomName:'[{"text":"███████","color": "red"},{"text":"███","color": "gray"}]'}
execute if score #time calculator matches 220 run data merge entity @e[type=villager,tag=tut5_net,limit=1] {CustomNameVisible:1b,CustomName:'[{"text":"████","color": "red"},{"text":"██████","color": "gray"}]'}
execute if score #time calculator matches 250 run data merge entity @e[type=villager,tag=tut5_net,limit=1] {CustomNameVisible:1b,CustomName:'[{"text":"██","color": "red"},{"text":"████████","color": "gray"}]'}
execute if score #time calculator matches 280 run kill @e[type=villager,tag=tut5_net,limit=1]
execute if score #time calculator matches 280 run data merge entity @e[type=zombie,limit=1,tag=tut5] {NoAI:1b,Silent:1b}

execute if score #time calculator matches 280 run summon firework_rocket 4 45 -119 {Invulnerable:1b,Life:0,LifeTime:6,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Flicker:1b,Colors:[I;65408,14641369,16726629],Type:4b}]}}}}


execute if score #time calculator matches 200 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.4","color": "aqua"}
execute if score #time calculator matches 200 run function lobby:tutorial/sound_text_up

execute if score #time calculator matches 285 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.5","color": "aqua"}
execute if score #time calculator matches 285 run function lobby:tutorial/sound_text_up



execute if score #time calculator matches 350 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 350 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.6","color": "aqua"}
execute if score #time calculator matches 340..363 run data merge entity @e[type=villager,limit=1,tag=tut5] {Motion:[0.0d,0.0d,0.15d],NoAI:0b}
execute if score #time calculator matches 363 run data merge entity @e[type=villager,limit=1,tag=tut5] {Motion:[0.0d,0.0d,0.0d],NoAI:1b}
execute if score #time calculator matches 363 run kill @e[type=item,limit=1,tag=tut5]
execute if score #time calculator matches 363 positioned ~-4 ~-2 ~ run playsound entity.item.pickup master @a[dx=8, dy=6, dz=8] ~ ~ ~ 1 1 1

execute if score #time calculator matches 380 run function lobby:tutorial/sound_over_up
execute if score #time calculator matches 380 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.netherite.7","color": "aqua"}



execute if score #time calculator matches 420 run function lobby:tutorial/netherite/end