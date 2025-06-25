scoreboard players set additional_shop blue 1
kill @e[type=marker,tag=blue_team_shop]
summon marker 0 0 0 {Tags:["blue_team_shop"]}

data modify storage run shopPos set from storage run map.shopPos.blue.Additions

data modify storage run map.shopPos.blue set from storage run shopPos[0]
data modify entity @e[type=marker,limit=1,tag=blue_team_shop] Pos set from storage run map.shopPos.blue.Pos
execute if data storage run map.shopPos.blue{facing:"west"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=west]
execute if data storage run map.shopPos.blue{facing:"east"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=east]
execute if data storage run map.shopPos.blue{facing:"north"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=north]
execute if data storage run map.shopPos.blue{facing:"south"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=south]
execute at @e[type=marker,limit=1,tag=blue_team_shop] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.8 ~ {CustomName:'{"translate":"✵ Shop ✵","color": "gold","italic": false}',Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["shop_notation"]}


data modify storage run map.shopPos.blue set from storage run shopPos[1]
data modify entity @e[type=marker,limit=1,tag=blue_team_shop] Pos set from storage run map.shopPos.blue.Pos
execute if data storage run map.shopPos.blue{facing:"west"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=west]
execute if data storage run map.shopPos.blue{facing:"east"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=east]
execute if data storage run map.shopPos.blue{facing:"north"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=north]
execute if data storage run map.shopPos.blue{facing:"south"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=south]
execute at @e[type=marker,limit=1,tag=blue_team_shop] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.8 ~ {CustomName:'{"translate":"✵ Shop ✵","color": "gold","italic": false}',Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["shop_notation"]}


data modify storage run map.shopPos.blue set from storage run shopPos[2]
data modify entity @e[type=marker,limit=1,tag=blue_team_shop] Pos set from storage run map.shopPos.blue.Pos
execute if data storage run map.shopPos.blue{facing:"west"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=west]
execute if data storage run map.shopPos.blue{facing:"east"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=east]
execute if data storage run map.shopPos.blue{facing:"north"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=north]
execute if data storage run map.shopPos.blue{facing:"south"} at @e[type=marker,limit=1,tag=blue_team_shop] run setblock ~ ~ ~ ender_chest[facing=south]
execute at @e[type=marker,limit=1,tag=blue_team_shop] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~0.8 ~ {CustomName:'{"translate":"✵ Shop ✵","color": "gold","italic": false}',Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["shop_notation"]}
kill @e[type=marker,tag=blue_team_shop]