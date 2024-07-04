scoreboard players set @s Payment 0
execute if entity @s[gamemode=creative] run return 1
execute store result score #holder calculator run data get storage run Pay.dirt
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s dirt 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay.iron
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s iron_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay.copper
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s copper_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay.diamond
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s diamond 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay.gold
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s gold_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay.lapis
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s lapis_lazuli 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1

execute store result score #holder calculator run data get storage run Pay.netherite
execute if score #holder calculator matches 1.. store result score @s calculator run clear @s netherite_ingot 0
execute if score #holder calculator matches 1.. unless score @s calculator >= #holder calculator run scoreboard players set @s Payment 1


execute unless score @s Payment matches 0 run tellraw @s {"translate":"[商店] 材料不足！","color": "red"}
execute unless score @s Payment matches 0 run function game:shop/pay/feedback
execute unless score @s Payment matches 0 at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.6 0.4
execute if score @s Payment matches 0 run function game:shop/pay/clear_cost
execute if score dataCollection Data matches 1.. if score @s Payment matches 0 if data storage run PayName run function game:shop/pay/record_data

data remove storage run Pay.gold
data remove storage run Pay.iron
data remove storage run Pay.dirt
data remove storage run Pay.copper
data remove storage run Pay.lapis
data remove storage run Pay.diamond
data remove storage run Pay.netherite
execute store result score $payTest calculator run data get storage run Pay
execute if score $payTest calculator matches 1.. run tellraw @s {"translate":"参数错误，请检查或联系作者","color": "red"}