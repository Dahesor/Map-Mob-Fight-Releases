function game:run/resources/checker/harvest_level

execute if entity @s[team=red] run scoreboard players operation diamond red += $moreDrop calculator
execute if entity @s[team=blue] run scoreboard players operation diamond blue += $moreDrop calculator

loot give @s loot simplified/diamond