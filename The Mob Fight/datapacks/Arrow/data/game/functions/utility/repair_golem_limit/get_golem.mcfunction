execute if entity @e[type=iron_golem,distance=..5] as @e[type=iron_golem,distance=..5,limit=1] at @s run return run function game:utility/repair_golem_limit/damage_max
execute unless entity @s[distance=..10] run return run function game:utility/repair_golem_limit/get_golem
return fail