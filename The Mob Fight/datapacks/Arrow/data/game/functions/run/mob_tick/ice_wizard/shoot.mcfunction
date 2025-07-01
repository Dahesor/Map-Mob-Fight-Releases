#define tag ice_magic
#define tag snowball_parent
#define tag snowball_child

summon snowball ^ ^ ^0.5 {NoGravity:1b,Tags:["ice_magic","new_temp","ticking","snowball_parent"],LeftOwner:0b,Item:{id:"packed_ice",Count:1b,tag:{Enchantments:[{}]}},Passengers:[{id:"marker",Tags:["del","ice_magic","ticking","snowball_child"],CustomName:'{"translate":"arrow.ice_wizard","color":"gold"}'}]}
data modify entity @e[type=snowball,tag=ice_magic,limit=1,tag=new_temp,distance=..6] Owner set from entity @s UUID
execute as @e[tag=ice_magic,tag=new_temp,type=snowball,distance=..6] store result score @s match run data get entity @s UUID[0]

execute as @e[tag=ice_magic,tag=new_temp,type=snowball,distance=..6] facing entity @a[limit=1,sort=nearest,gamemode=adventure,distance=..11] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
execute as @e[tag=ice_magic,tag=new_temp,tag=!shot,type=snowball,distance=..6] facing entity @e[limit=1,sort=nearest,type=#game:magic_target] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
tag @e[tag=ice_magic,tag=new_temp,type=snowball,distance=..6] remove new_temp
scoreboard players set @s genericCD -20