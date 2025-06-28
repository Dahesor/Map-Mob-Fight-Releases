execute if score #loop_3 calculator matches 2 at @e[type=marker,tag=altar_red,tag=!vand_busy] unless score stored_netherite red matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..1.2] run function game:shop/netherite/item_self_red
execute if score #loop_3 calculator matches 2 at @e[type=marker,tag=altar_blue,tag=!vand_busy] unless score stored_netherite blue matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..1.2] run function game:shop/netherite/item_self_blue

scoreboard players remove @e[type=armor_stand,tag=_vand,scores={genericCD=1..}] genericCD 1
execute as @e[type=armor_stand,scores={genericCD=0},tag=red_vand.child] run function game:shop/netherite/animation/get_next_red
execute as @e[type=armor_stand,scores={genericCD=0},tag=blue_vand.child] run function game:shop/netherite/animation/get_next_blue
execute if score #loop_3 calculator matches 1 run function game:shop/netherite/animation/loop

execute as @e[type=armor_stand,tag=red_vand,limit=1,tag=!_vand] at @s run function game:shop/netherite/vand/red
execute as @e[type=armor_stand,tag=blue_vand,limit=1,tag=!_vand] at @s run function game:shop/netherite/vand/blue

execute if score stored_netherite red matches 1.. unless entity @e[type=armor_stand,tag=red_vand,tag=!_vand] run function game:shop/netherite/animation/red_out
execute if score stored_netherite blue matches 1.. unless entity @e[type=armor_stand,tag=blue_vand,tag=!_vand] run function game:shop/netherite/animation/blue_out