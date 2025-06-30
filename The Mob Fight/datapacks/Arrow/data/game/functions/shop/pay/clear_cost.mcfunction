execute store result score #holder calculator run data get storage run Pay.dirt
execute if entity @s[team=red] run scoreboard players operation dirt.spent red += #holder calculator
execute if entity @s[team=blue] run scoreboard players operation dirt.spent blue += #holder calculator
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/dirt

execute store result score #holder calculator run data get storage run Pay.iron
execute if entity @s[team=red] run scoreboard players operation iron.spent red += #holder calculator
execute if entity @s[team=blue] run scoreboard players operation iron.spent blue += #holder calculator
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/iron

execute store result score #holder calculator run data get storage run Pay.copper
execute if entity @s[team=red] run scoreboard players operation copper.spent red += #holder calculator
execute if entity @s[team=blue] run scoreboard players operation copper.spent blue += #holder calculator
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/copper

execute store result score #holder calculator run data get storage run Pay.diamond
execute if entity @s[team=red] run scoreboard players operation diamond.spent red += #holder calculator
execute if entity @s[team=blue] run scoreboard players operation diamond.spent blue += #holder calculator
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/diamond

execute store result score #holder calculator run data get storage run Pay.gold
execute if entity @s[team=red] run scoreboard players operation gold.spent red += #holder calculator
execute if entity @s[team=blue] run scoreboard players operation gold.spent blue += #holder calculator
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/gold

execute store result score #holder calculator run data get storage run Pay.lapis
execute if entity @s[team=red] run scoreboard players operation lapis.spent red += #holder calculator
execute if entity @s[team=blue] run scoreboard players operation lapis.spent blue += #holder calculator
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/lapis

execute store result score #holder calculator run data get storage run Pay.netherite
execute if entity @s[team=red] run scoreboard players operation netherite.spent red += #holder calculator
execute if entity @s[team=blue] run scoreboard players operation netherite.spent blue += #holder calculator
execute if score #holder calculator matches 1.. run function game:shop/sell/loop/netherite