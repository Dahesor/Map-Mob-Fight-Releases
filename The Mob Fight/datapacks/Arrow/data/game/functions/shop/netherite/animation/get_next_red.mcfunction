data modify storage game:netherite_shop red.icons append from storage game:netherite_shop red.icons[0]
data remove storage game:netherite_shop red.icons[0]
data modify entity @s ArmorItems[3] set from storage game:netherite_shop red.icons[-1]
scoreboard players set @s genericCD -1