scoreboard players add @s genericCD 1
execute if score @s genericCD matches 40.. run function game:run/mob_tick/beacon/heal

execute if score #loop_20 calculator matches 15 run function game:run/mob_tick/beacon/stop