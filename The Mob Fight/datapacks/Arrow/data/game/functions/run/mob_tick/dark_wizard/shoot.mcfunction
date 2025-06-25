#define tag dark_magic

summon snowball ^ ^ ^0.5 {NoGravity:1b,Tags:["dark_magic","new_temp","ticking","snowball_parent"],LeftOwner:0b,Item:{id:"crying_obsidian",Count:1b,tag:{Enchantments:[{}]}}}
data modify entity @e[type=snowball,tag=dark_magic,limit=1,tag=new_temp] Owner set from entity @s UUID
execute as @e[tag=dark_magic,tag=new_temp,type=snowball] store result score @s match run data get entity @s UUID[0]

execute as @e[tag=dark_magic,tag=new_temp,type=snowball] facing entity @a[limit=1,sort=nearest,gamemode=adventure,distance=..11] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
execute as @e[tag=dark_magic,tag=new_temp,tag=!shot,type=snowball] facing entity @e[limit=1,sort=nearest,type=#game:magic_target] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
tag @e[tag=dark_magic,tag=new_temp,type=snowball] remove new_temp
scoreboard players set @s genericCD -20