execute store result score @s calculator run random value 1..12
execute if score @s calculator matches 1 positioned ~ ~ ~ run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 2 positioned ~0.4 ~ ~ run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 3 positioned ~ ~0.4 ~ run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 4 positioned ~ ~ ~0.4 run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 5 positioned ~-0.4 ~ ~ run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 6 positioned ~ ~-0.4 ~ run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 7 positioned ~ ~ ~-0.4 run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 8 positioned ~0.2 ~ ~0.3 run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 9 positioned ~0.3 ~0.2 ~ run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 10 positioned ~-0.4 ~-0.1 ~ run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 11 positioned ~0.2 ~ ~-0.3 run function game:run/mob_tick/wizard/midder
execute if score @s calculator matches 12 positioned ~ ~0.4 ~0.4 run function game:run/mob_tick/wizard/midder
execute store result entity @s Air short 1 run scoreboard players get #loop_3 calculator