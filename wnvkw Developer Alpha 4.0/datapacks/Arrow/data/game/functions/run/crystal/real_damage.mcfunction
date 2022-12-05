execute store result score @s calculator run data get entity @s Health 10
scoreboard players remove @s calculator 40
execute store result entity @s Health float 0.1 run scoreboard players get @s calculator