execute if score #loop_20 calculator matches 4 run particle dust 0.345 0.157 0.4 2 ~ ~3 ~ 0 0 0 0 1
execute if score #loop_20 calculator matches 12 run particle dust 0.345 0.157 0.4 2 ~ ~3 ~ 0 0 0 0 1
execute if score #loop_20 calculator matches 19 run particle dust 0.345 0.157 0.4 2 ~ ~3 ~ 0 0 0 0 1
scoreboard players remove @s genericCD 1
execute if score @s genericCD matches ..-40 run function game:run/mob_tick/silverfish_witch/summon