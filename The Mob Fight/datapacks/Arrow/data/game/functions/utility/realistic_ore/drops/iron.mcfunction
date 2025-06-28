function game:run/resources/checker/harvest_level

execute if entity @s[team=red] run scoreboard players operation iron red += $moreDrop calculator
execute if entity @s[team=blue] run scoreboard players operation iron blue += $moreDrop calculator

loot give @s loot simplified/iron