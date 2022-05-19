scoreboard players set game Data 1
kill @e[tag=map_notation]
kill @e[type=end_crystal]
kill @e[tag=red_spawn,type=marker]
kill @e[tag=blue_spawn,type=marker]
kill @e[type=marker,tag=ore_marker]
kill @e[type=marker,tag=altar_red]
kill @e[type=marker,tag=altar_blue]
kill @e[type=armor_stand,tag=altar_red_shop]
kill @e[type=armor_stand,tag=altar_blue_shop]
kill @e[type=armor_stand,tag=altar_mark.red]
kill @e[type=armor_stand,tag=altar_mark.blue]
kill @e[type=zombie,tag=vand_altar]
scoreboard players set GameLength Data 0
scoreboard players set @a Death 0
scoreboard players set @a sword 1
scoreboard players set @a axe 1
scoreboard players set @a crossbow 1
scoreboard players set @a armor 1
scoreboard players set @a pickaxe 1
scoreboard players set @a deathSourceCD 0
scoreboard players set sharpness red 0
scoreboard players set sharpness blue 0
scoreboard players set sweep red 0
scoreboard players set sweep blue 0
scoreboard players set efficiency red 0
scoreboard players set efficiency blue 0
scoreboard players set blast_protection red 0
scoreboard players set blast_protection blue 0
scoreboard players set proj_protection red 0
scoreboard players set proj_protection blue 0
scoreboard players set power red 0
scoreboard players set power blue 0
scoreboard players set alchemyLevel red 0
scoreboard players set alchemyLevel blue 0
scoreboard players set BarracksLevel red 0
scoreboard players set BarracksLevel blue 0
scoreboard players set magicLabLevel red 0
scoreboard players set magicLabLevel blue 0
scoreboard players set metalWorkLevel red 0
scoreboard players set metalWorkLevel blue 0
scoreboard players set supplyBuckupLevel red 0
scoreboard players set supplyBuckupLevel blue 0
scoreboard players set poisonFireLevel red 0
scoreboard players set poisonFireLevel blue 0
scoreboard players set score red 0
scoreboard players set score blue 0
scoreboard players set beemCD red 264
scoreboard players set beemCD blue 264
scoreboard players set beemLevel red 1
scoreboard players set beemLevel blue 1
scoreboard players set stored_netherite red 0
scoreboard players set stored_netherite blue 0
scoreboard players set dirtTime red 40
scoreboard players set dirtTime blue 40
scoreboard players set crystal_count red 2
scoreboard players set crystal_count blue 2

#set spawn points
summon marker 4 4 4 {Tags:["red_spawn"]}
data modify entity @e[type=marker,tag=red_spawn,limit=1] Pos set from storage run map.spawn.red
summon marker 4 4 4 {Tags:["blue_spawn"]}
data modify entity @e[type=marker,tag=blue_spawn,limit=1] Pos set from storage run map.spawn.blue

#set map specific tick and load commands
fill 0 0 0 0 0 2 air
setblock 0 0 0 command_block{Command:""}
execute if data storage run map.loadCommand run data modify block 0 0 0 Command set from storage run map.loadCommand
setblock 0 0 2 repeating_command_block{Command:""}
execute if data storage run map.tickCommand run data modify block 0 0 0 Command set from storage run map.tickCommand
setblock 0 0 1 redstone_block

#place enderchest
function game:shop/load


#place crystals
summon marker 0 3 0 {Invulnerable:1b,Tags:["red_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=red_crystal] Pos set from storage run map.crystalPos.red[0]
execute at @e[type=marker,tag=red_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["red_crystal"]}
kill @e[type=marker,tag=red_crystal]

summon marker 0 3 0 {Invulnerable:1b,Tags:["red_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=red_crystal] Pos set from storage run map.crystalPos.red[1]
execute at @e[type=marker,tag=red_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["red_crystal"]}
kill @e[type=marker,tag=red_crystal]

summon marker 0 3 0 {Invulnerable:1b,Tags:["blue_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=blue_crystal] Pos set from storage run map.crystalPos.blue[0]
execute at @e[type=marker,tag=blue_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["blue_crystal"]}
kill @e[type=marker,tag=blue_crystal]

summon marker 0 3 0 {Invulnerable:1b,Tags:["blue_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=blue_crystal] Pos set from storage run map.crystalPos.blue[1]
execute at @e[type=marker,tag=blue_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["blue_crystal"]}
kill @e[type=marker,tag=blue_crystal]

team join red @e[type=end_crystal,tag=red_crystal]
team join blue @e[type=end_crystal,tag=blue_crystal]


# altar
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
execute as @e[type=marker,limit=1,tag=altar_red] at @s positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["map_notation","intelligent_name"],CustomName:'["",{"translate":"action.drop","color": "green"}," ",{"translate":"netherite.nn"}]',CustomNameVisible:1b}

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
execute as @e[type=marker,limit=1,tag=altar_blue] at @s positioned ~ ~1.5 ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["map_notation","intelligent_name"],CustomName:'["",{"translate":"action.drop","color": "green"}," ",{"translate":"netherite.nn"}]',CustomNameVisible:1b}
# altar

function game:shop/initialize

tag @a add canBuyTotem


clear @a
scoreboard players set @a UI 1
execute as @a run function game:plugin/clear_enderchest
execute as @a run function ui:foolproof/redirect
gamemode adventure @a


function game:topbar/refresh
bossbar set top:single name {"text": "Start!","color": "yellow"}
bossbar set top:single color white