scoreboard players set @s genericCD 0
loot spawn ~ ~1 ~ loot game:vand

execute as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{from_netherite:2b}}}] at @s run function game:shop/netherite/mark_item

execute if entity @s[tag=red_vand] run scoreboard players remove stored_netherite red 1
execute if entity @s[tag=red_vand] run kill @e[type=armor_stand,tag=red_vand]
execute if entity @s[tag=red_vand] if score stored_netherite red matches ..0 run function game:shop/netherite/replace/red
execute if entity @s[tag=blue_vand] run scoreboard players remove stored_netherite blue 1
execute if entity @s[tag=blue_vand] run kill @e[type=armor_stand,tag=blue_vand]
execute if entity @s[tag=blue_vand] if score stored_netherite blue matches ..0 run function game:shop/netherite/replace/blue

