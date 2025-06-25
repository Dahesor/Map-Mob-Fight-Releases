execute as @e[type=marker,limit=1,tag=altar_blue] run data modify entity @s Pos set from storage run map.altar.blue.blockPos.1.Pos
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.1{Rotation:"north"} run setblock ~ ~ ~ stone_brick_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.1{Rotation:"south"} run setblock ~ ~ ~ polished_granite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.1{Rotation:"west"} run setblock ~ ~ ~ polished_diorite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.1{Rotation:"east"} run setblock ~ ~ ~ polished_andesite_slab[type=double]
execute as @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2 run data modify entity @s Pos set from storage run map.altar.blue.blockPos.2.Pos
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2{Rotation:"north"} run setblock ~ ~ ~ stone_brick_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2{Rotation:"south"} run setblock ~ ~ ~ polished_granite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2{Rotation:"west"} run setblock ~ ~ ~ polished_diorite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2{Rotation:"east"} run setblock ~ ~ ~ polished_andesite_slab[type=double]
execute as @e[type=marker,limit=1,tag=altar_blue] run data modify entity @s Pos set from storage run map.altar.blue.checkPoint
execute at @e[type=marker,limit=1,tag=altar_blue] run playsound arrow:event.animate_netherite master @a ~ ~ ~ 1.0 0.5

kill @e[type=armor_stand,limit=1,tag=blue_vand]
execute at @e[type=marker,limit=1,tag=altar_blue] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["blue_vand"],ArmorItems:[{},{},{},{id:"beacon",Count:1b}],DisabledSlots:16191}
execute if data storage run map.altar.blue{facing:"north"} run data merge entity @e[type=armor_stand,tag=blue_vand,limit=1] {Rotation:[-180.0f,0.0f]}
execute if data storage run map.altar.blue{facing:"south"} run data merge entity @e[type=armor_stand,tag=blue_vand,limit=1] {Rotation:[0.0f,0.0f]}
execute if data storage run map.altar.blue{facing:"west"} run data merge entity @e[type=armor_stand,tag=blue_vand,limit=1] {Rotation:[90.0f,0.0f]}
execute if data storage run map.altar.blue{facing:"east"} run data merge entity @e[type=armor_stand,tag=blue_vand,limit=1] {Rotation:[-90.0f,0.0f]}
execute if data storage run map.altar.blue{extend:1b} as @e[type=armor_stand,tag=blue_vand,limit=1] at @s run tp @s ^ ^ ^1
execute if data storage run map.altar.blue{drop:1b} as @e[type=armor_stand,tag=blue_vand,limit=1] at @s run tp @s ^ ^-1 ^

scoreboard players set @e[type=armor_stand,tag=blue_vand,limit=1,tag=!_vand] genericCD 100

execute as @e[type=armor_stand,limit=1,tag=blue_vand] at @s run function game:shop/netherite/animation/spread_icons/enter