scoreboard players remove @s revive_cooldown 1
effect give @s[scores={revive_cooldown=1..}] darkness 2 0 true
effect give @s resistance 10 30 true
effect give @s resistance 10 10 true
effect give @s regeneration 24 1
effect give @s strength 20 1
effect give @s haste 20 2
effect give @s speed 24 0
tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
execute if score @s revive_cooldown matches 0 run function game:death/revive/revive
execute at @s[scores={revive_cooldown=..0}] positioned ~ ~1.3 ~ run particle totem_of_undying ~ ~ ~ 0.3 0.3 0.3 0.4 100 normal @s
execute if score Performance Options matches 1 if score #loop_20 calculator matches 14 run function game:death/bossbar/refresh
execute if score Performance Options matches 0 if score #loop_3 calculator matches 0 run function game:death/bossbar/refresh