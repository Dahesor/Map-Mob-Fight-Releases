execute unless data entity @s {custom_potion_effects:[{}]} run return fail
execute on origin run scoreboard players add @s scb.shot 1
tag @s add shot_temp