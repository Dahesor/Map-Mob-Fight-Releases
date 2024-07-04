scoreboard players add @s genericCD 1
particle dust 0.961 0 0 2 ~ ~1.2 ~ 0 0 0 0 0 normal @a
execute if score @s genericCD matches 30.. run function game:player/warped_stick/mine/explode