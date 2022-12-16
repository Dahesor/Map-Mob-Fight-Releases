#1   4 magic damage
#2   8 magic damage
#3   8 magic damage, target air units first
#4   8 magic damage, target air units first, apply debuff
#5   4 magic damage, 4 void damage, target air units first, apply debuff

tag @s remove crystal_targeted
execute if entity @s[type=#game:undeads] unless score beemLevel red matches 2..4 run effect give @s instant_health 1 0
execute unless entity @s[type=#game:undeads] unless score beemLevel red matches 2..4 run effect give @s instant_damage 1 0

execute if entity @s[type=#game:undeads] if score beemLevel red matches 2..4 run effect give @s instant_health 1 1
execute unless entity @s[type=#game:undeads] if score beemLevel red matches 2..4 run effect give @s instant_damage 1 1
execute at @s run playsound arrow:event.laser_beem master @a ~ ~ ~ 0.5
execute if score beemLevel red matches 4.. at @s run function game:run/crystal/debuff
execute if score beemLevel red matches 5.. run function game:run/crystal/real_damage
