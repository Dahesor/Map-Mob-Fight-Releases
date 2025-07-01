summon arrow ~ ~ ~ {NoGravity:1b,Tags:["fire_magic","new_temp","ticking","magic_ball"],Fire:69s,damage:4.0d}
summon snowball ~ ~ ~ {NoGravity:1b,Tags:["fire_magic","new_temp","ticking"],Fire:69s,Item:{id:"magma_block",Count:1b}}
data modify entity @e[type=arrow,tag=fire_magic,limit=1] Owner set from entity @s UUID
execute as @e[tag=fire_magic,tag=new_temp] positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
tag @e[tag=fire_magic,tag=new_temp] remove new_temp