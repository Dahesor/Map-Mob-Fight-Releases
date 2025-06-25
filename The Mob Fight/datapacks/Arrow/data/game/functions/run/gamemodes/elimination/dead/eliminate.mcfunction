scoreboard players set @s Death 0
gamemode spectator
tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
execute if entity @s[team=red] if score @s deathSourceCD matches 1.. run function game:death/score/blue_kill_score
execute if entity @s[team=blue] if score @s deathSourceCD matches 1.. run function game:death/score/red_kill_score
execute if entity @s[team=red] unless score @s deathSourceCD matches 1.. run function game:death/score/blue_unre_kill_score
execute if entity @s[team=blue] unless score @s deathSourceCD matches 1.. run function game:death/score/red_unre_kill_score
execute if entity @s[team=red] run scoreboard players remove playerCountScore red 1
execute if entity @s[team=blue] run scoreboard players remove playerCountScore blue 1
scoreboard players set @s deathSourceCD 2

tellraw @s ["  ",{"translate":"message.death.eliminate","color": "red"}]
title @s times 0 40 20
title @s title {"text":"b","font": "icon"}
title @s subtitle {"translate":"title.eliminate","color": "red"}

function game:run/gamemodes/elimination/dead/player_check

execute if entity @s[team=red] if score player red matches ..0 run function game:death/final/record
execute if entity @s[team=blue] if score player blue matches ..0 run function game:death/final/record

tag @s remove center.killed_by_dripstone
execute if entity @s[team=red] run tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"message.eliminate.red","with":[{"score":{"name": "player","objective": "red"},"color": "yellow"}]}]
execute if entity @s[team=blue] run tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"message.eliminate.blue","with":[{"score":{"name": "player","objective": "blue"},"color": "yellow"}]}]

tag @s add eliminated
function game:topbar/refresh