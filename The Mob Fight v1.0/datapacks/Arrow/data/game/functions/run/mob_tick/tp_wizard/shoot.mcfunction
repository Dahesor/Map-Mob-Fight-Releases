#define tag tp_magic

summon snowball ^ ^ ^0.5 {NoGravity:1b,Tags:["tp_magic","new_temp","ticking","snowball_parent"],LeftOwner:0b,Item:{id:"ender_eye",Count:1b,tag:{Enchantments:[{}]}}}
data modify entity @e[type=snowball,tag=tp_magic,limit=1,tag=new_temp] Owner set from entity @s UUID
execute as @e[tag=tp_magic,tag=new_temp,type=snowball] store result score @s match run data get entity @s UUID[0]
execute as @e[tag=tp_magic,tag=new_temp,type=snowball] facing entity @a[limit=1,sort=nearest,gamemode=adventure,distance=..15] eyes positioned ^ ^ ^3.5 run function dtm:calculate_motion
tag @e[tag=tp_magic,tag=new_temp,type=snowball] remove new_temp
scoreboard players set @s genericCD -20