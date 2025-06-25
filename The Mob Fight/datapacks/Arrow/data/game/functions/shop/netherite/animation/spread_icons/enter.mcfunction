tp @s ~ ~ ~ ~90 ~
data modify entity @s Rotation[1] set value 10.0f
scoreboard players set #idTemp calculator 0

scoreboard players set #bringin calculator 0
execute at @s rotated as @s run function game:shop/netherite/animation/spread_icons/layer
data modify entity @s Rotation[1] set value -25.0f
scoreboard players set #bringin calculator 3
execute at @s rotated as @s run function game:shop/netherite/animation/spread_icons/layer
data modify entity @s Rotation[1] set value -62.0f
scoreboard players set #bringin calculator 6
execute at @s rotated as @s run function game:shop/netherite/animation/spread_icons/layer
data modify entity @s Rotation[1] set value -90.0f
scoreboard players set #bringin calculator 9
execute at @s rotated as @s run function game:shop/netherite/animation/spread_icons/layer
tp @s ~ ~ ~ ~-90 ~
data modify entity @s Rotation[1] set value -62.0f
scoreboard players set #bringin calculator 13
execute at @s rotated as @s run function game:shop/netherite/animation/spread_icons/layer
data modify entity @s Rotation[1] set value -25.0f
scoreboard players set #bringin calculator 16
execute at @s rotated as @s run function game:shop/netherite/animation/spread_icons/layer
data modify entity @s Rotation[1] set value 10.0f
scoreboard players set #bringin calculator 20
execute at @s rotated as @s run function game:shop/netherite/animation/spread_icons/layer

tp @s ~ ~ ~ ~0 ~

tag @e[type=armor_stand,tag=blue_vand] add blue_vand.child
tag @e[type=armor_stand,tag=red_vand] add red_vand.child