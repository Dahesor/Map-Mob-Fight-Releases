$scoreboard players set #time calculator $(time)

execute if score #time calculator matches 1 run function lobby:tutorial/crystal/renew_2

execute if score #time calculator matches 6 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.crystal.title","color": "gold","bold": true}
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.crystal.1","color": "aqua"}


execute if score #time calculator matches 60 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 60 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.crystal.2","color": "aqua"}
execute if score #time calculator matches 75 run summon zombie 19.50 43.00 -97.50 {NoAI:1b,Tags:["tut7"],Silent:1b,Attributes:[{Name:"generic.max_health",Base:200.0d}],Health:200f}

execute if score #time calculator matches 100 positioned ~ ~-2 ~-4 run playsound arrow:event.laser_beem master @a[dx=-8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 100 run data merge entity @e[type=end_crystal,limit=1,sort=random,tag=tut7] {BeamTarget:{X:19,Y:41,Z:-98}}
execute if score #time calculator matches 100 run effect give @e[type=zombie,tag=tut7] instant_health 1 0 true
execute if score #time calculator matches 110 run function lobby:tutorial/crystal/renew_2


execute if score #time calculator matches 130 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 130 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.crystal.3","color": "aqua"}

execute if score #time calculator matches 140 positioned ~ ~-2 ~-4 run playsound arrow:event.laser_beem master @a[dx=-8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 140 run data merge entity @e[type=end_crystal,limit=1,sort=random,tag=tut7] {BeamTarget:{X:19,Y:41,Z:-98}}
execute if score #time calculator matches 140 run effect give @e[type=zombie,tag=tut7] instant_health 1 0 true
execute if score #time calculator matches 150 run function lobby:tutorial/crystal/renew_2

execute if score #time calculator matches 200 positioned ~ ~-2 ~-4 run playsound arrow:event.laser_beem master @a[dx=-8, dy=6, dz=8] ~ ~ ~ 0.5
execute if score #time calculator matches 200 run data merge entity @e[type=end_crystal,limit=1,sort=random,tag=tut7] {BeamTarget:{X:19,Y:41,Z:-98}}
execute if score #time calculator matches 200 run kill @e[type=zombie,tag=tut7]
execute if score #time calculator matches 210 run function lobby:tutorial/crystal/renew_2

execute if score #time calculator matches 220 run function lobby:tutorial/sound_text_right
execute if score #time calculator matches 220 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.crystal.4","color": "aqua"}

execute if score #time calculator matches 240 run summon end_crystal 18.50 46.50 -94.50 {Invulnerable:1b,ShowBottom:0b,Tags:["tut7"]}
execute if score #time calculator matches 240 run particle cloud 18.50 46.50 -94.50 1 0 1 0.02 30 force @a

execute if score #time calculator matches 260 run summon end_crystal 18.50 46.50 -100.50 {Invulnerable:1b,ShowBottom:0b,Tags:["tut7"]}
execute if score #time calculator matches 260 run particle cloud 18.50 46.50 -100.50 1 0 1 0.02 30 force @a

execute if score #time calculator matches 280 run function lobby:tutorial/sound_over_right
execute if score #time calculator matches 280 positioned ~ ~-2 ~-4 run tellraw @a[dx=-8, dy=6, dz=8] {"translate":"tutorial.crystal.5","color": "aqua"}


execute if score #time calculator matches 300 run function lobby:tutorial/crystal/end