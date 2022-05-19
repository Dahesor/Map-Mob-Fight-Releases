execute as @e[type=marker,limit=1,tag=altar_red] run data modify entity @s Pos set from storage run map.altar.red.blockPos.1.Pos
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.1{Rotation:"north"} run setblock ~ ~ ~ stone_brick_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.1{Rotation:"south"} run setblock ~ ~ ~ polished_granite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.1{Rotation:"west"} run setblock ~ ~ ~ polished_diorite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.1{Rotation:"east"} run setblock ~ ~ ~ polished_andesite_slab[type=double]
execute as @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2 run data modify entity @s Pos set from storage run map.altar.red.blockPos.2.Pos
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2{Rotation:"north"} run setblock ~ ~ ~ stone_brick_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2{Rotation:"south"} run setblock ~ ~ ~ polished_granite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2{Rotation:"west"} run setblock ~ ~ ~ polished_diorite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2{Rotation:"east"} run setblock ~ ~ ~ polished_andesite_slab[type=double]
execute as @e[type=marker,limit=1,tag=altar_red] run data modify entity @s Pos set from storage run map.altar.red.checkPoint
execute at @e[type=marker,limit=1,tag=altar_red] run playsound arrow:event.animate_netherite master @a ~ ~ ~ 1.0 0.5

kill @e[type=armor_stand,limit=1,tag=altar_red_shop]
execute at @e[type=marker,limit=1,tag=altar_red] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["altar_red_shop"],Small:1b}
execute if data storage run map.altar.red{facing:"north"} run data merge entity @e[type=armor_stand,tag=altar_red_shop,limit=1] {Rotation:[-180.0f,0.0f]}
execute if data storage run map.altar.red{facing:"south"} run data merge entity @e[type=armor_stand,tag=altar_red_shop,limit=1] {Rotation:[0.0f,0.0f]}
execute if data storage run map.altar.red{facing:"west"} run data merge entity @e[type=armor_stand,tag=altar_red_shop,limit=1] {Rotation:[90.0f,0.0f]}
execute if data storage run map.altar.red{facing:"east"} run data merge entity @e[type=armor_stand,tag=altar_red_shop,limit=1] {Rotation:[-90.0f,0.0f]}
execute if data storage run map.altar.red{extend:1b} as @e[type=armor_stand,tag=altar_red_shop,limit=1] at @s run tp @s ^ ^ ^1
execute if data storage run map.altar.red{drop:1b} as @e[type=armor_stand,tag=altar_red_shop,limit=1] at @s run tp @s ^ ^-1 ^
schedule function game:shop/netherite/animation/spread_red/wait 10t