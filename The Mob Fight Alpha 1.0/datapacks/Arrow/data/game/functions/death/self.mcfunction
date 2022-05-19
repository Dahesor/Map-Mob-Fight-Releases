scoreboard players set @s Death 0
gamemode spectator
tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
execute if entity @s[team=red] if score @s deathSourceCD matches 1.. run function game:death/score/blue_kill_score
execute if entity @s[team=blue] if score @s deathSourceCD matches 1.. run function game:death/score/red_kill_score
execute if entity @s[team=red] unless score @s deathSourceCD matches 1.. run function game:death/score/blue_unre_kill_score
execute if entity @s[team=blue] unless score @s deathSourceCD matches 1.. run function game:death/score/red_unre_kill_score
function game:topbar/refresh
scoreboard players set @s deathSourceCD 2
scoreboard players operation @s revive_cooldown = reviveCooldown Options
tellraw @s ["  ",{"translate":"message.death","color": "red"}]
title @s times 0 40 20
title @s title {"translate":"title.death","color": "red"}
title @s subtitle {"translate":"subtitle.death","color": "red"}