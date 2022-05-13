execute store result score #holder calculator run data get storage run result.Price.dirt
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/dirt
execute store result score #holder calculator run data get storage run result.Price.iron
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/iron
execute store result score #holder calculator run data get storage run result.Price.copper
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/copper
execute store result score #holder calculator run data get storage run result.Price.diamond
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/diamond
execute store result score #holder calculator run data get storage run result.Price.gold
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/gold
execute store result score #holder calculator run data get storage run result.Price.lapis
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/lapis
execute store result score #holder calculator run data get storage run result.Price.quartz
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/quartz
execute store result score #holder calculator run data get storage run result.Price.netherite
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/netherite

execute at @s run function game:shop/sell/give_item