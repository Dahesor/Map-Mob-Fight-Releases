damage @s 8 player_attack by @a[limit=1,tag=UpRocketFinish]
execute facing entity @s feet positioned ^ ^2 ^4 run function dtm:calculate_motion
execute store result entity @s Air short 1 run scoreboard players get #loop_20 calculator