execute if score @s genericCD matches 10.. run function game:run/mob_tick/dancer/spawn
scoreboard players add @s genericCD 1
execute if score #loop_20 calculator matches 19 run function game:run/mob_tick/dancer/status