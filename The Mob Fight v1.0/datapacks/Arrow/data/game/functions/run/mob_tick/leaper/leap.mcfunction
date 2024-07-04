scoreboard players set @s genericCD -50
execute positioned ^ ^ ^5 run function dtm:calculate_motion
playsound block.scaffolding.break hostile @a ~ ~ ~ 1 0.5
playsound block.glass.break hostile @a ~ ~ ~ 1 0.9
particle cloud ~ ~0.15 ~ 0.3 0.3 0.3 0.1 40 normal