#

#>
#@private
#define tag pigman_cage_marker

summon marker 3 1 2 {Tags:["pigman_cage_marker"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] Pos set from storage run map.pigMan.blue.StructurePos
execute at @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] run setblock ~ ~ ~ structure_block{posX:0,posY:0,posZ:0,rotation:"NONE",mirror:"NONE",name:"",mode:"LOAD",author:"?",integrity:1.0f,showboundingbox:0b} replace
execute at @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] run data modify block ~ ~ ~ name set from storage run map.pigMan.blue.StructurePath
execute at @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] run data modify block ~ ~ ~ mirror set from storage run map.pigMan.blue.mirror
execute at @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] run data modify block ~ ~ ~ rotation set from storage run map.pigMan.blue.rotation
execute at @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] run setblock ~ ~1 ~ redstone_block

data modify entity @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] Pos set from storage run map.pigMan.blue.itemPos
execute at @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] run summon marker ~ ~ ~ {Tags:["pigman_item"]}

kill @e[type=marker,tag=pigman_cage_marker]