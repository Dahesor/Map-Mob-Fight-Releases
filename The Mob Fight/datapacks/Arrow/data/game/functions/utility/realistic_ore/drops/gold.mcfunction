function game:run/resources/checker/harvest_level

execute if entity @s[team=red] run scoreboard players operation gold red += $moreDrop calculator
execute if entity @s[team=blue] run scoreboard players operation gold blue += $moreDrop calculator

loot give @s loot simplified/gold