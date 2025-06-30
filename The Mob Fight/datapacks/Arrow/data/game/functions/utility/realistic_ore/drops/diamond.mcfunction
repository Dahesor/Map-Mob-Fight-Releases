function game:run/resources/checker/harvest_level

execute if entity @s[team=red] run scoreboard players operation diamond red += $moreDrop calculator
execute if entity @s[team=blue] run scoreboard players operation diamond blue += $moreDrop calculator

scoreboard players operation $eco_score scb.eco = $moreDrop calculator
scoreboard players operation $eco_score scb.eco *= #20 calculator
scoreboard players operation @s scb.eco += $eco_score scb.eco


loot give @s loot simplified/diamond