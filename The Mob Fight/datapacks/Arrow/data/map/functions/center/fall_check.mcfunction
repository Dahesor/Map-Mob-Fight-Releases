execute store result score $%fall calculator run data get entity @s FallDistance 10
execute if score $%fall calculator matches 1.. run scoreboard players operation @s map.CENTER.falling_distance = $%fall calculator
execute if score $%fall calculator matches ..0 if score @s map.CENTER.falling_distance matches 50.. run scoreboard players set @s map.CENTER.falling_distance 50
execute if score $%fall calculator matches ..0 if score @s map.CENTER.falling_distance matches 1.. run scoreboard players remove @s map.CENTER.falling_distance 1
execute as @a[gamemode=adventure,scores={map.CENTER.falling_distance=45..}] at @s if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=up] if block ~ ~0.1 ~ pointed_dripstone run function map:center/dripstone_kill