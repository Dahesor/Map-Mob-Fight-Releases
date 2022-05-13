team join red @r[tag=need_team]
tellraw @a[team=red,tag=need_team] {"translate":"您被随机分至红队！","color": "red"}
tag @a[team=red] remove need_team
execute if entity @a[tag=need_team] run function game:plugin/random_team/check