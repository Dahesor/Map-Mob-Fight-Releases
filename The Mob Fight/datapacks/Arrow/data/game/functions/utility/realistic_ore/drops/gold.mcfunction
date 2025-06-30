function game:run/resources/checker/harvest_level

execute if entity @s[team=red] run scoreboard players operation gold red += $moreDrop calculator
execute if entity @s[team=blue] run scoreboard players operation gold blue += $moreDrop calculator

scoreboard players operation $eco_score scb.eco = $moreDrop calculator
scoreboard players operation $eco_score scb.eco *= #16 calculator
scoreboard players operation @s scb.eco += $eco_score scb.eco


loot give @s loot simplified/gold