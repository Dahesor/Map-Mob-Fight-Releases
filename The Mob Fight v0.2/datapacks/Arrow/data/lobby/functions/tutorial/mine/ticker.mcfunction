$scoreboard players set #time calculator $(time)


execute if score #time calculator matches 6 run function lobby:tutorial/sound_text
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.mining.title","color": "gold","bold": true}
execute if score #time calculator matches 6 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.mining.1","color": "aqua"}


execute if score #time calculator matches 55 run function lobby:tutorial/sound_text
execute if score #time calculator matches 55 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.mining.2","color": "aqua"}

execute if score #time calculator matches 70 run setblock -20 44 -87 gold_ore
execute if score #time calculator matches 70 run particle cloud -20 44.5 -87 1 0 1 0.05 30 force @a

execute if score #time calculator matches 85 run setblock -21 44 -90 deepslate_diamond_ore
execute if score #time calculator matches 85 run particle cloud -21 44.5 -90 1 0 1 0.05 30 force @a

execute if score #time calculator matches 100 run setblock -21 46 -86 lapis_ore
execute if score #time calculator matches 100 run particle cloud -21 46.5 -86 1 0 1 0.05 30 force @a

execute if score #time calculator matches 115 run setblock -22 47 -91 iron_ore
execute if score #time calculator matches 115 run particle cloud -22 47.5 -91 1 0 1 0.05 30 force @a

execute if score #time calculator matches 130 run function lobby:tutorial/sound_text
execute if score #time calculator matches 130 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.mining.3","color": "aqua"}

execute if score #time calculator matches 160 run setblock -20 44 -87 stone destroy
execute if score #time calculator matches 160 run kill @e[type=experience_orb]
execute if score #time calculator matches 160 run summon item_display -18.5 44.5 -87 {item:{id:"iron_pickaxe",Count:1b},billboard:"fixed",brightness:{block:15,sky:15},transformation:{scale:[1f,1f,1f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:["tut2"],Rotation:[90f,0f]}

execute if score #time calculator matches 170 rotated as @e[tag=tut2,type=item_display,limit=1] run tp @e[tag=tut2,type=item_display] -19.5 44.5 -90 ~ ~
execute if score #time calculator matches 170 run setblock -21 44 -90 deepslate destroy
execute if score #time calculator matches 170 run kill @e[type=experience_orb]

execute if score #time calculator matches 180 rotated as @e[tag=tut2,type=item_display,limit=1] run tp @e[tag=tut2,type=item_display] -19.5 46.5 -86 ~ ~
execute if score #time calculator matches 180 run setblock -21 46 -86 stone destroy
execute if score #time calculator matches 180 run kill @e[type=experience_orb]

execute if score #time calculator matches 190 rotated as @e[tag=tut2,type=item_display,limit=1] run tp @e[tag=tut2,type=item_display] -20.5 47.5 -91 ~ ~
execute if score #time calculator matches 190 run setblock -22 47 -91 stone destroy
execute if score #time calculator matches 190 run kill @e[type=experience_orb]

execute if score #time calculator matches 250 run function lobby:tutorial/sound_text
execute if score #time calculator matches 250 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.mining.4","color": "aqua"}

execute if score #time calculator matches 270 run setblock -18 45 -85 copper_ore
execute if score #time calculator matches 270 run particle cloud -18 45.5 -85 1 0 1 0.05 30 force @a

execute if score #time calculator matches 290 run setblock -22 48 -89 gold_ore
execute if score #time calculator matches 290 run particle cloud -22 48.5 -89 1 0 1 0.05 30 force @a

execute if score #time calculator matches 310 run function lobby:tutorial/sound_over
execute if score #time calculator matches 310 positioned ~ ~-2 ~-4 run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.mining.5","color": "aqua"}


execute if score #time calculator matches 350 run function lobby:tutorial/mine/end