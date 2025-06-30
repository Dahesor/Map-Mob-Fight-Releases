gamemode spectator
function game:death/update

execute if score GameMode Data matches 4 run return run function game:run/gamemodes/elimination/dead/eliminate

scoreboard players set @s Death 0
execute as @a[tag=spectator] at @s run playsound entity.wither.break_block master @s ~ ~ ~ 1 0.8
tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
execute if entity @s[team=red] if score @s deathSourceCD matches 1.. run function game:death/score/blue_kill_score
execute if entity @s[team=blue] if score @s deathSourceCD matches 1.. run function game:death/score/red_kill_score
execute if entity @s[team=red] unless score @s deathSourceCD matches 1.. run function game:death/score/blue_unre_kill_score
execute if entity @s[team=blue] unless score @s deathSourceCD matches 1.. run function game:death/score/red_unre_kill_score
function game:topbar/refresh

execute if entity @s[team=red] if score score blue >= TargetScore Options unless score score red >= TargetScore Options run function game:death/final/record
execute if entity @s[team=blue] if score score red >= TargetScore Options unless score score blue >= TargetScore Options run function game:death/final/record

tag @s remove center.killed_by_dripstone
scoreboard players set @s deathSourceCD 2
scoreboard players operation @s revive_cooldown = reviveCooldown Options
execute if score GameMode Data matches 3 run function game:run/gamemodes/villager/death_score/revive_cd
tellraw @s ["  ",{"translate":"message.death","color": "red"}]
title @s times 0 40 20
title @s title {"text":"b","font": "icon"}
title @s subtitle {"translate":"title.death","color": "red"}
function game:death/bossbar/display

data modify storage run log.log append value {content:{translate:"event.died",color:"red"}}
function lobby:spectator/sidebar/log/signed

scoreboard players add @s scb.death 1