execute at @e[type=marker,tag=altar_red,tag=!vand_busy] unless score stored_netherite red matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..1.2] run function game:shop/netherite/item_self_red
execute at @e[type=marker,tag=altar_blue,tag=!vand_busy] unless score stored_netherite blue matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..1.2] run function game:shop/netherite/item_self_blue

scoreboard players remove @e[type=armor_stand,tag=_vand,scores={genericCD=1..}] genericCD 1
execute as @e[type=armor_stand,scores={genericCD=0},tag=red_vand.child] run function game:shop/netherite/animation/get_next_red
execute as @e[type=armor_stand,scores={genericCD=0},tag=blue_vand.child] run function game:shop/netherite/animation/get_next_blue
execute if score #loop_3 calculator matches 1 run function game:shop/netherite/animation/loop

scoreboard players remove @e[type=armor_stand,tag=red_vand,limit=1,scores={genericCD=2..},tag=!_vand] genericCD 1
scoreboard players remove @e[type=armor_stand,tag=blue_vand,limit=1,scores={genericCD=2..},tag=!_vand] genericCD 1
execute as @e[type=armor_stand,tag=blue_vand,limit=1,scores={genericCD=1},tag=!_vand] at @s run function game:shop/netherite/vand
execute as @e[type=armor_stand,tag=red_vand,limit=1,scores={genericCD=1},tag=!_vand] at @s run function game:shop/netherite/vand
execute if score #loop_3 calculator matches 1 at @e[type=armor_stand,tag=blue_vand,limit=1,scores={genericCD=2..},tag=!_vand] run particle minecraft:portal ~ ~-1 ~ 0.0001 0 0.0001 7 200 normal @a
execute if score #loop_3 calculator matches 1 at @e[type=armor_stand,tag=red_vand,limit=1,scores={genericCD=2..},tag=!_vand] run particle minecraft:portal ~ ~-1 ~ 0.0001 0 0.0001 7 200 normal @a
execute if score #loop_3 calculator matches 1 at @e[type=armor_stand,tag=blue_vand,limit=1,scores={genericCD=2..},tag=!_vand] run particle minecraft:enchant ~ ~3 ~ 1 1 1 4 100 normal @a
execute if score #loop_3 calculator matches 1 at @e[type=armor_stand,tag=red_vand,limit=1,scores={genericCD=2..},tag=!_vand] run particle minecraft:enchant ~ ~3 ~ 1 1 1 4 100 normal @a


execute if score stored_netherite red matches 1.. unless entity @e[type=armor_stand,tag=red_vand,tag=!_vand] run function game:shop/netherite/animation/red_out
execute if score stored_netherite blue matches 1.. unless entity @e[type=armor_stand,tag=blue_vand,tag=!_vand] run function game:shop/netherite/animation/blue_out