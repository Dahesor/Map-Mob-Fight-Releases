summon tnt ~ ~ ~ {fuse:40,Tags:["normal","ticking","tnt_auto","new_temp"]}
execute if entity @e[type=villager,distance=..3] as @e[type=tnt,tag=new_temp] run function game:run/netherite/villager/tnt/bounce
tag @e[type=tnt,tag=new_temp] remove new_temp
kill