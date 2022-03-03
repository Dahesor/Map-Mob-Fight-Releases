execute store result score #holder calculator run data get storage run result.Price[{type:"dirt"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/dirt
execute store result score #holder calculator run data get storage run result.Price[{type:"iron"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/iron
execute store result score #holder calculator run data get storage run result.Price[{type:"copper"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/copper
execute store result score #holder calculator run data get storage run result.Price[{type:"diamond"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/diamond
execute store result score #holder calculator run data get storage run result.Price[{type:"gold"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/gold
execute store result score #holder calculator run data get storage run result.Price[{type:"lapis"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/lapis
execute store result score #holder calculator run data get storage run result.Price[{type:"quartz"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/quartz

execute at @s run function game:shop/sell/give_item