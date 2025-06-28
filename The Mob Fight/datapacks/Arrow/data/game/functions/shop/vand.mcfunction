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
execute as @e[type=marker,limit=1,tag=altar_red] at @s run summon text_display ~ ~1.5 ~ {Tags:["map_notation","del","vand_notation"],text:'["",{"translate":"action.drop","color": "green"}," ",{"translate":"netherite.nn"}," ",{"translate":"action.pull","color": "green","with": ["3"]},"\\n"]',billboard:"center",background:1275068416,alignment:"center",view_range:0.15}

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
execute as @e[type=marker,limit=1,tag=altar_blue] at @s run summon text_display ~ ~1.5 ~ {Tags:["map_notation","del","vand_notation"],text:'["",{"translate":"action.drop","color": "green"}," ",{"translate":"netherite.nn"}," ",{"translate":"action.pull","color": "green","with": ["3"]},"\\n"]',billboard:"center",background:1275068416,alignment:"center",view_range:0.15}