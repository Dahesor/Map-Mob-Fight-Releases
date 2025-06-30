execute if score @s genericCD matches 2.. run scoreboard players remove @s genericCD 1
execute if score @s genericCD matches 1 run function game:shop/netherite/vand

execute unless score #loop_3 calculator matches 1 run return fail
particle minecraft:portal ~ ~-1 ~ 0.0001 0 0.0001 7 200 normal @a
particle minecraft:enchant ~ ~3 ~ 1 1 1 4 100 normal @a