title @a title {"text": "Time's Up!","color": "red"}
title @a subtitle " "
tp @a[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @a[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
effect clear @a
effect give @a jump_boost 6 128 true
effect give @a slowness 6 100 true
effect give @a instant_health 1 100 true
effect give @a saturation 1 100 true
effect give @a regeneration 20 10 true
effect give @a resistance 20 10 true
execute as @e[type=villager,tag=villager_marker] run data merge entity @s {Health:100f,Invulnerable:1b,NoAI:1b}