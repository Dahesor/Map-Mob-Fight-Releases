execute store result score @s calculator run data get entity @s Pos[1]
execute if score @s calculator matches ..0 run tp 0 57 98
execute if score @s calculator matches ..0 run clear @s carrot_on_a_stick{isParkourReseter:1b}
execute if score @s calculator matches ..0 at @s run particle minecraft:portal ~ ~-1 ~ 0.0001 0 0.0001 5 100 force @a