team join blue @r[tag=need_team]
tellraw @a[team=blue,tag=need_team] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"您被随机分至蓝队！","color": "aqua"}]
tag @a[team=blue] remove need_team
execute if entity @a[tag=need_team] run function game:plugin/random_team/check