scoreboard players set @s Payment 0
execute store result score #holder calculator run data get storage run Pay[{type:"dirt"}].Count
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s dirt 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay[{type:"iron"}].Count
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s iron_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay[{type:"copper"}].Count
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s copper_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay[{type:"diamond"}].Count
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s diamond 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay[{type:"gold"}].Count
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s gold_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay[{type:"quartz"}].Count
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s quartz 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay[{type:"lapis"}].Count
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s lapis_lazuli 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1


execute unless score @s Payment matches 0 run tellraw @s {"translate":"[商店] 材料不足！","color": "red"}
execute unless score @s Payment matches 0 at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.2
execute if score @s Payment matches 0 run function game:shop/pay/clear_cost