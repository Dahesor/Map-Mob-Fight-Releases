execute store result score $random calculator run random value 0..7
execute if score $random calculator matches 7 run return run function game:run/mob_tick/grand_wizard/fire_special
function game:run/mob_tick/grand_wizard/spawn_magic
data modify entity @e[type=snowball,limit=1,tag=new_temp,tag=snowball_parent,distance=..4] Owner set from entity @s UUID
execute as @e[tag=new_temp,type=snowball,tag=snowball_parent,distance=..4] store result score @s match run data get entity @s UUID[0]

execute as @e[tag=new_temp,type=snowball,tag=snowball_parent,distance=..4] positioned ^ ^ ^2 run function game:run/mob_tick/wizard/midder
tag @e[tag=new_temp,type=snowball,distance=..10] remove new_temp