#1   6 physical damage
#2   9 physical damage
#3   8 magic damage, target air units first
#4   8 magic damage, target air units first, apply debuff
#5   4 magic damage, 4 void damage, target air units first, apply debuff



data merge storage run {macro_crystal:{damage:5.0f}}
execute if score beemLevel red matches 2 run data merge storage run {macro_crystal:{damage:8.0f}}
execute if score beemLevel red matches 3..4 run data merge storage run {macro_crystal:{damage:11.0f}}
execute if score beemLevel red matches 4.. at @s as @e[type=#game:mobs,distance=..3.5,tag=!crystal_targeted] run function game:run/crystal/area
execute if score beemLevel red matches 5 run data merge storage run {macro_crystal:{damage:5.0f}}
#tellraw @a {"nbt":"macro_crystal","storage": "run"}
tag @s remove crystal_targeted
execute if score @s mobDEF matches 1.. run function game:run/crystal/damage/calculate
#tellraw @a {"nbt":"macro_crystal","storage": "run"}
function game:run/crystal/damage/macro with storage run macro_crystal
execute if score beemLevel red matches 5 run damage @s 6 generic_kill


execute if entity @s[nbt={Health:0.0f}] at @s run function game:run/crystal/chain/death
execute at @s run playsound arrow:event.laser_beem master @a ~ ~ ~ 0.5

