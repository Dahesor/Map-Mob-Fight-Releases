kill @e[type=marker,tag=altar_red]
kill @e[type=marker,tag=altar_blue]
kill @e[type=armor_stand,tag=blue_vand]
kill @e[type=armor_stand,tag=red_vand]
kill @e[type=armor_stand,tag=_vand]

summon marker 0 0 0 {Tags:["altar_red"]}
execute as @e[type=marker,limit=1,tag=altar_red] run data modify entity @s Pos set from storage run map.altar.red.blockPos.1.Pos
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.1{Rotation:"north"} run setblock ~ ~ ~ stone_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.1{Rotation:"south"} run setblock ~ ~ ~ granite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.1{Rotation:"west"} run setblock ~ ~ ~ diorite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.1{Rotation:"east"} run setblock ~ ~ ~ andesite_slab[type=double]
execute as @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2 run data modify entity @s Pos set from storage run map.altar.red.blockPos.2.Pos
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2{Rotation:"north"} run setblock ~ ~ ~ stone_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2{Rotation:"south"} run setblock ~ ~ ~ granite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2{Rotation:"west"} run setblock ~ ~ ~ diorite_slab[type=double]
execute at @e[type=marker,limit=1,tag=altar_red] if data storage run map.altar.red.blockPos.2{Rotation:"east"} run setblock ~ ~ ~ andesite_slab[type=double]
execute as @e[type=marker,limit=1,tag=altar_red] run data modify entity @s Pos set from storage run map.altar.red.checkPoint
execute as @e[type=marker,limit=1,tag=altar_red] at @s positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["map_notation","intelligent_name"],CustomName:'["",{"translate":"action.drop","color": "green"}," ",{"translate":"netherite.nn"}," ",{"translate":"action.pull","color": "green","with": ["3"]}]',CustomNameVisible:1b}

summon marker 0 0 0 {Tags:["altar_blue"]}
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
execute as @e[type=marker,limit=1,tag=altar_blue] at @s positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["map_notation","intelligent_name"],CustomName:'["",{"translate":"action.drop","color": "green"}," ",{"translate":"netherite.nn"}," ",{"translate":"action.pull","color": "green","with": ["3"]}]',CustomNameVisible:1b}