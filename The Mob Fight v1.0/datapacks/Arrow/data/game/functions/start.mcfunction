tag @a[team=!] remove team_randomed
tag @a[team=,tag=!spectator] add need_team
tag @a[tag=need_team] add team_randomed
execute if entity @a[tag=need_team] run function game:plugin/random_team/check
function game:run/initialize
tp @a[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @a[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
bossbar set map:load visible false
function lobby:lobby_spinner/lapis
schedule function lobby:start_game/start/gamemode_icon 45t

tellraw @a "======================="
execute if score GameMode Data matches 0 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.0","color":"green"}," : "]
execute if score GameMode Data matches 1 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.1","color":"gold"}," : "]
execute if score GameMode Data matches 2 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.2","color":"aqua"}," : "]
execute if score GameMode Data matches 3 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.3","color":"light_purple"}," : "]
execute if score GameMode Data matches 4 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.4","color":"red"}," : "]