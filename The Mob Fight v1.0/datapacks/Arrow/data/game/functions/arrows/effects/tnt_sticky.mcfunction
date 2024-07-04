summon tnt ~ ~ ~ {fuse:40,Tags:["normal","new_temp","tnt_sticky"],NoGravity:1b}
execute if entity @e[type=villager,distance=..3] as @e[type=tnt,tag=new_temp] run function game:run/netherite/villager/tnt/bounce
tag @e[type=tnt,tag=new_temp] remove new_temp
kill