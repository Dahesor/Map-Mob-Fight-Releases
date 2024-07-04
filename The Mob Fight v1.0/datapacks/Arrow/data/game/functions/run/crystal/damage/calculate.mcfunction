execute store result score #going_to_apply calculator run data get storage run macro_crystal.damage 100
scoreboard players operation #going_to_reduce calculator = #going_to_apply calculator
scoreboard players operation #going_to_reduce calculator *= @s mobDEF
scoreboard players operation #going_to_apply calculator *= #100 calculator
scoreboard players operation #going_to_apply calculator -= #going_to_reduce calculator
execute store result storage run macro_crystal.damage float 0.0001 run scoreboard players get #going_to_apply calculator