scoreboard players set @s Death 0
tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
execute if entity @s[team=red] run scoreboard players operation score blue += killScore Options
execute if entity @s[team=blue] run scoreboard players operation score red += killScore Options
function game:topbar/refresh