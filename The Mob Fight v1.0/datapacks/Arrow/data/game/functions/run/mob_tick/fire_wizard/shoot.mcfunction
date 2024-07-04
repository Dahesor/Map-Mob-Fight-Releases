#define tag fire_magic
summon arrow ~ ~ ~ {NoGravity:1b,Tags:["fire_magic","new_temp","ticking","magic_ball"],Fire:69s,damage:4.0d}
summon snowball ~ ~ ~ {NoGravity:1b,Tags:["fire_magic","new_temp","ticking"],Fire:69s,Item:{id:"magma_block",Count:1b}}
data modify entity @e[type=arrow,tag=fire_magic,limit=1] Owner set from entity @s UUID
execute as @e[tag=fire_magic,tag=new_temp] facing entity @a[limit=1,sort=nearest,gamemode=adventure,distance=..11] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
execute as @e[tag=fire_magic,tag=new_temp,tag=!shot] facing entity @e[limit=1,sort=nearest,type=#game:magic_target] eyes positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
tag @e[tag=fire_magic,tag=new_temp] remove new_temp
scoreboard players set @s genericCD -20