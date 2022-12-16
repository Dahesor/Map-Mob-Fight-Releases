summon marker ~ ~ ~ {Tags:["iubqibhfdHHS-213"]}
execute store result score #random calculator run data get entity @e[type=marker,limit=1,tag=iubqibhfdHHS-213] UUID[0]
scoreboard players operation #random calculator %= #10 calculator
kill @e[type=marker,tag=iubqibhfdHHS-213]
execute store result score #s$countmax calculator run data get entity @s data.spawn.pos
execute if score #random calculator > #s$countmax calculator run scoreboard players operation #random calculator = #s$countmax calculator
scoreboard players remove #random calculator 1
execute if score #random calculator matches 0 run data modify storage run summonPos set from entity @s data.spawn.pos[0]
execute if score #random calculator matches 0 run data remove entity @s data.spawn.pos[0]
execute if score #random calculator matches 1 run data modify storage run summonPos set from entity @s data.spawn.pos[1]
execute if score #random calculator matches 1 run data remove entity @s data.spawn.pos[1]
execute if score #random calculator matches 2 run data modify storage run summonPos set from entity @s data.spawn.pos[2]
execute if score #random calculator matches 2 run data remove entity @s data.spawn.pos[2]
execute if score #random calculator matches 3 run data modify storage run summonPos set from entity @s data.spawn.pos[3]
execute if score #random calculator matches 3 run data remove entity @s data.spawn.pos[3]
execute if score #random calculator matches 4 run data modify storage run summonPos set from entity @s data.spawn.pos[4]
execute if score #random calculator matches 4 run data remove entity @s data.spawn.pos[4]
execute if score #random calculator matches 5 run data modify storage run summonPos set from entity @s data.spawn.pos[5]
execute if score #random calculator matches 5 run data remove entity @s data.spawn.pos[5]
execute if score #random calculator matches 6 run data modify storage run summonPos set from entity @s data.spawn.pos[6]
execute if score #random calculator matches 6 run data remove entity @s data.spawn.pos[6]
execute if score #random calculator matches 7 run data modify storage run summonPos set from entity @s data.spawn.pos[7]
execute if score #random calculator matches 7 run data remove entity @s data.spawn.pos[7]
execute if score #random calculator matches 8 run data modify storage run summonPos set from entity @s data.spawn.pos[8]
execute if score #random calculator matches 8 run data remove entity @s data.spawn.pos[8]
execute if score #random calculator matches -1 run data modify storage run summonPos set from entity @s data.spawn.pos[9]
execute if score #random calculator matches -1 run data remove entity @s data.spawn.pos[9]




data modify entity @s data.spawn.pos append from storage run summonPos