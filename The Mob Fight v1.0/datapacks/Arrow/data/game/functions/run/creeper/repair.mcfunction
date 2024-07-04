playsound block.smithing_table.use master @a ~ ~ ~
execute store result score @s calculator run data get entity @s Item.Count
scoreboard players remove @s calculator 1
execute if score @s calculator matches ..0 run kill
execute store result entity @s Item.Count byte 1 run scoreboard players get @s calculator
tag @s remove will_repair