execute store result score $HPleft calculator run data get entity @s Health 10
execute if entity @s[team=red] run scoreboard players operation $HPleft red += $HPleft calculator
execute if entity @s[team=blue] run scoreboard players operation $HPleft blue += $HPleft calculator