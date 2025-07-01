summon snowball ^ ^ ^0.5 {NoGravity:1b,Tags:["twitching_magic","new_temp","ticking","snowball_parent"],LeftOwner:0b,Item:{id:"glass_bottle",Count:1b,tag:{Enchantments:[{}]}},Passengers:[{id:"marker",Tags:["del","twitching_magic","ticking","snowball_child"],CustomName:'{"translate":"arrow.twitching_wizard","color":"gold"}'}]}


data modify entity @e[type=snowball,tag=twitching_magic,limit=1,tag=new_temp,distance=..6] Owner set from entity @s UUID
execute as @e[tag=twitching_magic,tag=new_temp,type=snowball,distance=..6] store result score @s match run data get entity @s UUID[0]

execute as @e[tag=twitching_magic,tag=new_temp,type=snowball,distance=..6] facing entity @a[limit=1,sort=nearest,gamemode=adventure,distance=..12] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
execute as @e[tag=twitching_magic,tag=new_temp,tag=!shot,type=snowball,distance=..6] facing entity @e[limit=1,sort=nearest,type=#game:magic_target] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
tag @e[tag=twitching_magic,tag=new_temp,type=snowball,distance=..6] remove new_temp
scoreboard players set @s genericCD -20