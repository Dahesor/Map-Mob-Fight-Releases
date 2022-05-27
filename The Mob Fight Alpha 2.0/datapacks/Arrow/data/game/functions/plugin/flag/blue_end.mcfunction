team leave @e[team=blue,tag=in_flag_effect]
tag @e[predicate=map:in_red] remove in_flag_effect
tellraw @a [{"translate":"蓝队的"},{"translate":"号令之旗","color": "gold"},{"translate":"has_end","color": "green","italic": false}]