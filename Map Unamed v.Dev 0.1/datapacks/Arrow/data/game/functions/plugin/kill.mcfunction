execute store result score @s calculator run data get entity @s Health
execute unless score @s hpPotionCD matches 16.. run scoreboard players remove @s calculator 7
execute if score @s hpPotionCD matches 16.. run scoreboard players operation @s calculator /= #2 calculator
execute if score @s hpPotionCD matches 16.. run scoreboard players remove @s calculator 1
execute store result entity @s Health float 1 run scoreboard players get @s calculator

