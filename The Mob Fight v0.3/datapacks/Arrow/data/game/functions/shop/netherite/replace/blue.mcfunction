execute as @e[type=marker,limit=1,tag=altar_blue] run data modify entity @s Pos set from storage run map.altar.blue.blockPos.1.Pos
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.1{Rotation:"north"} run setblock ~ ~ ~ stone_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.1{Rotation:"south"} run setblock ~ ~ ~ granite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.1{Rotation:"west"} run setblock ~ ~ ~ diorite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.1{Rotation:"east"} run setblock ~ ~ ~ andesite_slab[type=double]
execute as @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2 run data modify entity @s Pos set from storage run map.altar.blue.blockPos.2.Pos
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2{Rotation:"north"} run setblock ~ ~ ~ stone_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2{Rotation:"south"} run setblock ~ ~ ~ granite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2{Rotation:"west"} run setblock ~ ~ ~ diorite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_blue] if data storage run map.altar.blue.blockPos.2{Rotation:"east"} run setblock ~ ~ ~ andesite_slab[type=double]
execute as @e[type=marker,limit=1,tag=altar_blue] run data modify entity @s Pos set from storage run map.altar.blue.checkPoint
