execute if entity @s[tag=ice_magic] run summon marker ~ ~-0.8 ~ {Tags:["ice_magic","del",'ticking','snowball_child'],CustomName:'{"translate":"arrow.ice_wizard","color":"gold"}'}
execute if entity @s[tag=dark_magic] run summon marker ~ ~-0.8 ~ {Tags:["dark_magic","del",'ticking','snowball_child'],CustomName:'{"translate":"arrow.dark_wizard","color":"gold"}'}
execute if entity @s[tag=poison_magic] run summon marker ~ ~-0.8 ~ {Tags:["poison_magic","del",'ticking','snowball_child'],CustomName:'{"translate":"arrow.posion_wizard","color":"gold"}'}
execute if entity @s[tag=wind_magic] run summon marker ~ ~-0.8 ~ {Tags:["wind_magic","del",'ticking','snowball_child'],CustomName:'{"translate":"arrow.wind_wizard","color":"dark_purple"}'}
execute if entity @s[tag=water_magic] run summon marker ~ ~-0.8 ~ {Tags:["water_magic","del",'ticking','snowball_child'],CustomName:'{"translate":"arrow.water_wizard","color":"gold"}'}
execute if entity @s[tag=tp_magic] run function game:run/mob_tick/tp_wizard/new_marker
execute store result entity @s Air short 1 run scoreboard players get #loop_3 calculator
execute if entity @s[tag=ice_magic] run particle minecraft:snowflake ~ ~0.14 ~ 0 0 0 0.1 3 normal @a
execute if entity @s[tag=dark_magic] run particle minecraft:soul ~ ~0.14 ~ 0 0 0 0.1 3 normal @a
execute if entity @s[tag=poison_magic] run particle minecraft:dust 0.024 0.624 0.345 0.8 ~ ~0.8 ~ 0.4 0.4 0.4 0.1 16 normal @a
execute if entity @s[tag=tp_magic] run particle portal ~ ~0.8 ~ 0.4 0.4 0.4 0.001 20 normal @a
execute if entity @s[tag=wind_magic] run particle cloud ~ ~0.3 ~ 0.3 0.3 0.3 0.01 5 normal @a
execute if entity @s[tag=water_magic] run particle falling_water ~ ~0.3 ~ 0.3 0.3 0.3 0.01 5 normal @a

execute positioned ~ ~-1 ~ if entity @a[gamemode=adventure,distance=..1.3] run kill
execute positioned ~ ~-1 ~ if entity @e[type=#game:magic_target,distance=..1.8] run kill

scoreboard players add @s genericCD 1
execute if score @s genericCD matches 100.. run kill