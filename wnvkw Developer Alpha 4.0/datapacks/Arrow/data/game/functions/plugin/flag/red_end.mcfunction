team leave @e[team=red,tag=in_flag_effect]
tag @e[predicate=map:in_blue] remove in_flag_effect
tellraw @a [{"translate":"红队的"},{"translate":"号令之旗","color": "gold"},{"translate":"has_end","color": "green","italic": false}]