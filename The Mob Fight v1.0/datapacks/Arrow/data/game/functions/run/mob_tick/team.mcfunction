tag @s add mob_resolved
team join red @s[team=!blue,predicate=map:in_blue,type=#game:join_team]
team join blue @s[team=!red,predicate=map:in_red,type=#game:join_team]
execute if entity @e[tag=in_flag_effect,tag=red_crystal] run tag @s[team=!red,team=!blue,predicate=map:in_blue] add in_flag_effect
execute if entity @e[tag=in_flag_effect,tag=red_crystal] run tag @s[team=!red,team=!blue,predicate=map:in_red] add in_flag_effect
execute if entity @e[tag=in_flag_effect,tag=blue_crystal] run team join red @s[team=!blue,predicate=map:in_blue]
execute if entity @e[tag=in_flag_effect,tag=blue_crystal] run team join blue @s[team=!red,predicate=map:in_red]
execute if entity @s[predicate=map:in_blue] if score onSpeedyEffect red matches 1.. run function game:plugin/speedy/new_joined_mob
execute if entity @s[predicate=map:in_red] if score onSpeedyEffect blue matches 1.. run function game:plugin/speedy/new_joined_mob

execute at @s if entity @e[type=villager,tag=villager_marker,distance=..5] run attribute @s generic.follow_range base set 10.0