function game:player/specials/trident/particle

effect give @a[distance=..7] regeneration 2 1
effect give @e[distance=..7,type=villager,tag=villager_marker] resistance 2 2
scoreboard players add @s genericCD 1
execute unless score @s genericCD matches 9.. run return 1

playsound minecraft:item.trident.return master @a ~ ~ ~ 1 0.8
loot spawn ~ ~ ~ loot simplified/gold
kill