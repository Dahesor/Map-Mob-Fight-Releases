execute unless score @s genericCD matches 15.. run function game:plugin/blindness/standard
execute unless score @s genericCD matches 15.. if entity @s[tag=red] run tp @s ~ ~ ~7
execute unless score @s genericCD matches 15.. if entity @s[tag=blue] run tp @s ~ ~ ~-7
scoreboard players add @s genericCD 1