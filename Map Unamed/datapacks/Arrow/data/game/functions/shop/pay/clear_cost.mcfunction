execute store result score #holder calculator run data get storage run Pay[{type:"dirt"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/dirt
execute store result score #holder calculator run data get storage run Pay[{type:"iron"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/iron
execute store result score #holder calculator run data get storage run Pay[{type:"copper"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/copper
execute store result score #holder calculator run data get storage run Pay[{type:"diamond"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/diamond
execute store result score #holder calculator run data get storage run Pay[{type:"quartz"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/quartz
execute store result score #holder calculator run data get storage run Pay[{type:"gold"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/gold
execute store result score #holder calculator run data get storage run Pay[{type:"lapis"}].Count
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/lapis