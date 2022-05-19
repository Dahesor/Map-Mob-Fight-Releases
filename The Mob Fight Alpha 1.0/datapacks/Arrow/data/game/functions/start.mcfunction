tag @a[team=!] remove team_randomed
#execute unless entity @a[tag=need_team] if entity @a[team=red] unless entity @a[team=blue] run team leave @r[team=red]
#execute unless entity @a[tag=need_team] if entity @a[team=blue] unless entity @a[team=red] run team leave @r[team=blue]
tag @a[team=] add need_team
tag @a[tag=need_team] add team_randomed
execute if entity @a[tag=need_team] run function game:plugin/random_team/check
function game:run/initialize
tp @a[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @a[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
bossbar set map:load visible false
function lobby:lobby_spinner/lapis