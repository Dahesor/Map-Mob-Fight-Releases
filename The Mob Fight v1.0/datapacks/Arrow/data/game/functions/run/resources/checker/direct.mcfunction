#define tag just_mined

execute if score @s monitor.copper matches 1.. run function game:utility/realistic_ore/copper
execute if score @s monitor.copper_d matches 1.. run function game:utility/realistic_ore/copper_deep
execute if score @s monitor.diam matches 1.. run function game:utility/realistic_ore/diamond
execute if score @s monitor.diam_d matches 1.. run function game:utility/realistic_ore/diamond_deep
execute if score @s monitor.gold matches 1.. run function game:utility/realistic_ore/gold
execute if score @s monitor.gold_d matches 1.. run function game:utility/realistic_ore/gold_deep
execute if score @s monitor.iron matches 1.. run function game:utility/realistic_ore/iron
execute if score @s monitor.iron_d matches 1.. run function game:utility/realistic_ore/iron_deep
execute if score @s monitor.lapis matches 1.. run function game:utility/realistic_ore/lapis
execute if score @s monitor.lapis_d matches 1.. run function game:utility/realistic_ore/lapis_d

execute if entity @s[tag=just_mined] at @s run function game:run/resources/checker/find_item