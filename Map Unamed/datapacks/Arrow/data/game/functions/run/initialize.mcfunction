scoreboard players set game Data 1
kill @e[tag=map_notation]
kill @e[type=end_crystal]
kill @e[tag=red_spawn,type=marker]
kill @e[tag=blue_spawn,type=marker]
kill @e[type=marker,tag=ore_marker]
scoreboard players set GameLength Data 0
scoreboard players set @a Death 0
scoreboard players set @a sword 1
scoreboard players set @a axe 1
scoreboard players set @a crossbow 1
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
scoreboard players set poisonBoilLevel red 0
scoreboard players set poisonBoilLevel blue 0
scoreboard players set fireEssenceLevel red 0
scoreboard players set fireEssenceLevel blue 0
scoreboard players set score red 0
scoreboard players set score blue 0

summon marker 4 4 4 {Tags:["red_spawn"]}
data modify entity @e[type=marker,tag=red_spawn,limit=1] Pos set from storage run map.spawn.red
summon marker 4 4 4 {Tags:["blue_spawn"]}
data modify entity @e[type=marker,tag=blue_spawn,limit=1] Pos set from storage run map.spawn.blue


fill 0 0 0 0 0 2 air
setblock 0 0 0 command_block{Command:""}
execute if data storage run map.loadCommand run data modify block 0 0 0 Command set from storage run map.loadCommand
setblock 0 0 2 repeating_command_block{Command:""}
execute if data storage run map.tickCommand run data modify block 0 0 0 Command set from storage run map.tickCommand
setblock 0 0 1 redstone_block

kill @e[type=armor_stand,tag=shop_notation]
summon marker 0 0 0 {Tags:["red_team_shop"]}
data modify entity @e[type=marker,limit=1,tag=red_team_shop] Pos set from storage run map.shopPos.red.Pos
execute if data storage run map.shopPos.red{facing:"west"} at @e[type=marker,limit=1,tag=red_team_shop] run setblock ~ ~ ~ ender_chest[facing=west]
execute if data storage run map.shopPos.red{facing:"east"} at @e[type=marker,limit=1,tag=red_team_shop] run setblock ~ ~ ~ ender_chest[facing=east]
execute if data storage run map.shopPos.red{facing:"north"} at @e[type=marker,limit=1,tag=red_team_shop] run setblock ~ ~ ~ ender_chest[facing=north]
execute if data storage run map.shopPos.red{facing:"south"} at @e[type=marker,limit=1,tag=red_team_shop] run setblock ~ ~ ~ ender_chest[facing=south]
execute at @e[type=marker,limit=1,tag=red_team_shop] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.8 ~ {CustomName:'{"translate":"✵ Shop ✵","color": "gold","italic": false}',Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["shop_notation"]}

summon marker 0 0 0 {Tags:["blue_team_shop"]}
data modify entity @e[type=marker,limit=1,tag=blue_team_shop] Pos set from storage run map.shopPos.blue.Pos
execute if data storage run map.shopPos.blue{facing:"west"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=west]
execute if data storage run map.shopPos.blue{facing:"east"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=east]
execute if data storage run map.shopPos.blue{facing:"north"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=north]
execute if data storage run map.shopPos.blue{facing:"south"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=south]
execute at @e[type=marker,limit=1,tag=blue_team_shop] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.8 ~ {CustomName:'{"translate":"✵ Shop ✵","color": "gold","italic": false}',Marker:1b,NoGravity:1b,Invisible:1b,CustomNameVisible:1b,Invulnerable:1b,Tags:["shop_notation"]}
kill @e[type=marker,tag=red_team_shop]
kill @e[type=marker,tag=blue_team_shop]


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

function game:shop/initialize




#clear @a
scoreboard players set @a UI 1
execute as @a run function game:plugin/clear_enderchest
execute as @a run function ui:foolproof/redirect
#gamemode adventure @a