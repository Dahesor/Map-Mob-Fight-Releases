$scoreboard players set #time calculator $(time)

execute if score #time calculator matches 2 run summon end_crystal -20.27 48.60 -94.69 {Invulnerable:1b,Tags:["tut3"],NoGravity:1b,ShowBottom:0b}
execute if score #time calculator matches 6 run function lobby:tutorial/sound_text
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.title","color": "gold","bold": true}
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.1","color": "aqua"}

execute if score #time calculator matches 45 run function lobby:tutorial/sound_text
execute if score #time calculator matches 45 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.2","color": "aqua"}



execute if score #time calculator matches 70 run setblock -19 43 -100 coarse_dirt
execute if score #time calculator matches 70 run particle cloud -19.5 43.5 -100.5 1 0 1 0.02 30 force @a
execute if score #time calculator matches 70 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-19,Y:41,Z:-100}}
execute if score #time calculator matches 70 positioned ~ ~-2 ~-4 run playsound block.rooted_dirt.place master @a[dx=8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 75 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:47,Z:-95}}

execute if score #time calculator matches 90 run setblock -19 43 -95 coarse_dirt
execute if score #time calculator matches 90 run particle cloud -19.5 43.5 -95.5 1 0 1 0.02 30 force @a
execute if score #time calculator matches 90 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-19,Y:41,Z:-95}}
execute if score #time calculator matches 90 positioned ~ ~-2 ~-4 run playsound block.rooted_dirt.place master @a[dx=8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 95 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:47,Z:-95}}

execute if score #time calculator matches 110 run setblock -20 43 -100 coarse_dirt
execute if score #time calculator matches 110 run particle cloud -20.5 43.5 -100.5 1 0 1 0.02 30 force @a
execute if score #time calculator matches 110 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:41,Z:-100}}
execute if score #time calculator matches 110 positioned ~ ~-2 ~-4 run playsound block.rooted_dirt.place master @a[dx=8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 115 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:47,Z:-95}}

execute if score #time calculator matches 130 run setblock -18 43 -100 coarse_dirt
execute if score #time calculator matches 130 run particle cloud -18.5 43.5 -100.5 1 0 1 0.02 30 force @a
execute if score #time calculator matches 130 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-18,Y:41,Z:-100}}
execute if score #time calculator matches 130 positioned ~ ~-2 ~-4 run playsound block.rooted_dirt.place master @a[dx=8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 135 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:47,Z:-95}}

execute if score #time calculator matches 150 run setblock -20 43 -98 coarse_dirt
execute if score #time calculator matches 150 run particle cloud -20.5 43.5 -98.5 1 0 1 0.02 30 force @a
execute if score #time calculator matches 150 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:41,Z:-98}}
execute if score #time calculator matches 150 positioned ~ ~-2 ~-4 run playsound block.rooted_dirt.place master @a[dx=8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 155 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:47,Z:-95}}

execute if score #time calculator matches 170 run setblock -22 43 -96 coarse_dirt
execute if score #time calculator matches 170 run particle cloud -22.5 43.5 -96.5 1 0 1 0.02 30 force @a
execute if score #time calculator matches 170 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-22,Y:41,Z:-96}}
execute if score #time calculator matches 170 positioned ~ ~-2 ~-4 run playsound block.rooted_dirt.place master @a[dx=8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 175 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:47,Z:-95}}

execute if score #time calculator matches 190 run setblock -20 43 -101 coarse_dirt
execute if score #time calculator matches 190 run particle cloud -20.5 43.5 -101.5 1 0 1 0.02 30 force @a
execute if score #time calculator matches 190 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:41,Z:-101}}
execute if score #time calculator matches 190 positioned ~ ~-2 ~-4 run playsound block.rooted_dirt.place master @a[dx=8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 195 run data merge entity @e[type=end_crystal,tag=tut3,limit=1] {BeamTarget:{X:-20,Y:47,Z:-95}}

execute if score #time calculator matches 90 run function lobby:tutorial/sound_text
execute if score #time calculator matches 90 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.3","color": "aqua"}

execute if score #time calculator matches 140 run function lobby:tutorial/sound_text
execute if score #time calculator matches 140 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.7","color": "aqua"}

execute if score #time calculator matches 185 run function lobby:tutorial/sound_text
execute if score #time calculator matches 185 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.4","color": "aqua"}

execute if score #time calculator matches 200 run clone -26 49 -92 -24 45 -90 -21 45 -101
execute if score #time calculator matches 200 run fill -22 43 -95 -18 43 -102 air
execute if score #time calculator matches 200 run summon zombified_piglin -19.58 46.00 -99.35 {NoAI:1b,Tags:["tut3"]}


execute if score #time calculator matches 200 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 220 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 240 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 260 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 280 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 300 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 320 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 340 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 360 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}
execute if score #time calculator matches 380 run summon item -20 44.6 -100 {Item:{id:"dirt",Count:1b},Tags:["tut3"],Invulnerable:1b,PickupDelay:30000s,Glowing:1b}


execute if score #time calculator matches 250 run function lobby:tutorial/sound_text
execute if score #time calculator matches 250 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.5","color": "aqua"}

execute if score #time calculator matches 290 run function lobby:tutorial/sound_text
execute if score #time calculator matches 290 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.6","color": "aqua"}

execute if score #time calculator matches 330 run function lobby:tutorial/sound_text
execute if score #time calculator matches 330 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.8","color": "aqua"}

execute if score #time calculator matches 370 run function lobby:tutorial/sound_text
execute if score #time calculator matches 370 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.dirt.9","color": "aqua"}

execute if score #time calculator matches 375 run data merge entity @e[limit=1,type=zombified_piglin,sort=nearest,tag=tut3] {Glowing:1b}
execute if score #time calculator matches 380 run data merge entity @e[limit=1,type=zombified_piglin,sort=nearest,tag=tut3] {Glowing:0b}
execute if score #time calculator matches 385 run data merge entity @e[limit=1,type=zombified_piglin,sort=nearest,tag=tut3] {Glowing:1b}
execute if score #time calculator matches 390 run data merge entity @e[limit=1,type=zombified_piglin,sort=nearest,tag=tut3] {Glowing:0b}
execute if score #time calculator matches 395 run data merge entity @e[limit=1,type=zombified_piglin,sort=nearest,tag=tut3] {Glowing:1b}
execute if score #time calculator matches 400 run data merge entity @e[limit=1,type=zombified_piglin,sort=nearest,tag=tut3] {Glowing:0b}
execute if score #time calculator matches 405 run data merge entity @e[limit=1,type=zombified_piglin,sort=nearest,tag=tut3] {Glowing:1b}
execute if score #time calculator matches 410 run data merge entity @e[limit=1,type=zombified_piglin,sort=nearest,tag=tut3] {Glowing:0b}


execute if score #time calculator matches 420 run function lobby:tutorial/dirt/end