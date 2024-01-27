tag @a[team=!] remove team_randomed
tag @a[team=,tag=!spectator] add need_team
tag @a[tag=need_team] add team_randomed
execute if entity @a[tag=need_team] run function game:plugin/random_team/check
function game:run/initialize
tp @a[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @a[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
bossbar set map:load visible false
function lobby:lobby_spinner/lapis