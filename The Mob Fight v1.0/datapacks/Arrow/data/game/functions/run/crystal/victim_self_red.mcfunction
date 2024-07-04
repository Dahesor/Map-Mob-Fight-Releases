#1   6 physical damage
#2   9 physical damage
#3   8 magic damage, target air units first
#4   8 magic damage, target air units first, apply debuff
#5   4 magic damage, 4 void damage, target air units first, apply debuff

tag @s remove crystal_targeted

data merge storage run {macro_crystal:{damage:5.0f}}
execute if score beemLevel red matches 2 run data merge storage run {macro_crystal:{damage:7.0f}}
execute if score beemLevel red matches 3..4 run data merge storage run {macro_crystal:{damage:9.0f}}
execute if score beemLevel red matches 4.. at @s as @e[type=#game:mobs,distance=..2] run damage @s 2 mob_attack
execute if score beemLevel red matches 5 run data merge storage run {macro_crystal:{damage:8.0f}}

#tellraw @a {"nbt":"macro_crystal","storage": "run"}

execute if score @s mobDEF matches 1.. run function game:run/crystal/damage/calculate
#tellraw @a {"nbt":"macro_crystal","storage": "run"}
function game:run/crystal/damage/macro with storage run macro_crystal

execute if score beemLevel red matches 5 run damage @s 3 generic_kill

execute if entity @s[nbt={Health:0.0f}] at @s run function game:run/crystal/chain/death
execute at @s run playsound arrow:event.laser_beem master @a ~ ~ ~ 0.5
execute if score beemLevel red matches 4.. at @s run function game:run/crystal/debuff

