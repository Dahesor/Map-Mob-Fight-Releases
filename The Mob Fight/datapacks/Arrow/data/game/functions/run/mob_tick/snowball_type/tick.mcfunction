execute positioned ~ ~-1 ~ if entity @a[gamemode=adventure,distance=..1.3] run return run kill
execute positioned ~ ~-1 ~ if entity @e[type=#game:magic_target,distance=..1.8] run return run kill

execute store result entity @s Air short 1 run scoreboard players get #loop_3 calculator
execute if entity @s[tag=ice_magic] run particle minecraft:snowflake ~ ~0.14 ~ 0 0 0 0.1 3 normal @a
execute if entity @s[tag=dark_magic] run particle minecraft:soul ~ ~0.14 ~ 0 0 0 0.1 3 normal @a
execute if entity @s[tag=poison_magic] run particle minecraft:dust 0.024 0.624 0.345 0.8 ~ ~0.8 ~ 0.4 0.4 0.4 0.1 16 normal @a
execute if entity @s[tag=tp_magic] run particle portal ~ ~0.8 ~ 0.4 0.4 0.4 0.001 20 normal @a
execute if entity @s[tag=wind_magic] run particle cloud ~ ~0.3 ~ 0.3 0.3 0.3 0.01 5 normal @a
execute if entity @s[tag=water_magic] run particle falling_water ~ ~0.3 ~ 0.3 0.3 0.3 0.01 5 normal @a
execute if entity @s[tag=wounding_magic] run particle falling_lava ~ ~0.3 ~ 0.3 0.3 0.3 0.01 5 normal @a
execute if entity @s[tag=twitching_magic] run particle block glass ~ ~0.3 ~ 0.3 0.3 0.3 0.01 5 normal @a


scoreboard players add @s genericCD 1
execute if score @s genericCD matches 100.. run kill