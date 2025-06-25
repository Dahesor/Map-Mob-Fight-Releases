scoreboard players add @s genericCD 1

execute if score @s genericCD matches ..19 run return fail

scoreboard players operation @s calculator = @s genericCD
scoreboard players operation @s calculator %= #3 calculator

execute if score @s genericCD matches 120.. run return run kill

execute unless score @s calculator matches 0 run return fail

execute if entity @s[tag=in_red] run tag @e[tag=!invOnVehicle,type=#game:mobs,predicate=map:in_red,limit=1,sort=random,team=!red,tag=!vand_altar,distance=..10] add crystal_targeted

execute if entity @s[tag=in_blue] run tag @e[tag=!invOnVehicle,type=#game:mobs,predicate=map:in_blue,limit=1,sort=random,team=!blue,tag=!vand_altar,distance=..10] add crystal_targeted

execute unless entity @e[tag=crystal_targeted,type=#game:mobs] run return fail

execute as @e[tag=crystal_targeted,type=#game:mobs] run data modify storage run dirtRun set from entity @s Pos
execute if entity @s[tag=in_blue] as @e[type=end_crystal,tag=blue_crystal,limit=1,sort=random] run function game:run/dirt/lazer
execute if entity @s[tag=in_red] as @e[type=end_crystal,tag=red_crystal,limit=1,sort=random] run function game:run/dirt/lazer
execute if entity @s[tag=in_red] as @e[limit=1,sort=nearest,tag=crystal_targeted] run function game:run/crystal/victim_self_red
execute if entity @s[tag=in_blue] as @e[limit=1,sort=nearest,tag=crystal_targeted] run function game:run/crystal/victim_self_blue