tag @s remove just_mined
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_axe",tag:{isOreMined:1b}}}] at @s run function game:run/resources/checker/item_self