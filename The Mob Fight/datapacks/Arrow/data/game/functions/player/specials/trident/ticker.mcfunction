function game:player/specials/trident/particle

effect give @a[distance=..7] regeneration 2 1
effect give @e[distance=..7,type=villager,tag=villager_marker] resistance 2 2
scoreboard players add @s genericCD 1
execute unless score @s genericCD matches 9.. run return 1

playsound minecraft:item.trident.return master @a ~ ~ ~ 1 0.8
scoreboard players set $moreDrop calculator 2
loot spawn ~ ~ ~ loot simplified/gold
execute if predicate map:in_blue run scoreboard players add gold blue 2
execute if predicate map:in_red run scoreboard players add gold red 2
kill