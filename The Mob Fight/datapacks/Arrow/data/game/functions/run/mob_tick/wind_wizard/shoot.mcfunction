#define tag wind_magic

summon snowball ^ ^ ^0.5 {NoGravity:1b,Tags:["wind_magic","new_temp","ticking","snowball_parent"],LeftOwner:0b,Item:{id:"apple",Count:1b,tag:{Enchantments:[{}],CustomModelData:2}},Passengers:[{id:"marker",Tags:["del","wind_magic","ticking","snowball_child"],CustomName:'{"translate":"arrow.wind_wizard","color":"dark_purple"}'}]}
data modify entity @e[type=snowball,tag=wind_magic,limit=1,tag=new_temp,distance=..6] Owner set from entity @s UUID
execute as @e[tag=wind_magic,tag=new_temp,type=snowball,distance=..6] store result score @s match run data get entity @s UUID[0]

execute as @e[tag=wind_magic,tag=new_temp,type=snowball,distance=..6] facing entity @a[limit=1,sort=nearest,gamemode=adventure,distance=..9] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
execute as @e[tag=wind_magic,tag=new_temp,tag=!shot,type=snowball,distance=..6] facing entity @e[limit=1,sort=nearest,type=#game:magic_target] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
tag @e[tag=wind_magic,tag=new_temp,type=snowball,distance=..6] remove new_temp
scoreboard players set @s genericCD -20