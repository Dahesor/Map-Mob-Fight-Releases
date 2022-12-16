scoreboard players set @s genericCD 0
loot spawn ~ ~ ~ loot game:vand
execute if entity @s[tag=red_vand] run scoreboard players remove stored_netherite red 1
execute if entity @s[tag=red_vand] run kill @e[type=armor_stand,tag=red_vand]
execute if entity @s[tag=blue_vand] run scoreboard players remove stored_netherite blue 1
execute if entity @s[tag=blue_vand] run kill @e[type=armor_stand,tag=blue_vand]
