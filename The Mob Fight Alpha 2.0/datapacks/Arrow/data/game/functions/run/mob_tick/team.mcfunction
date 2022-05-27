tag @s add mob_resolved
team join red @s[team=!blue,predicate=map:in_blue,type=#game:join_team]
team join blue @s[team=!red,predicate=map:in_red,type=#game:join_team]
execute if entity @e[tag=in_flag_effect,team=red] run tag @s[team=!red,team=!blue,predicate=map:in_blue] add in_flag_effect
execute if entity @e[tag=in_flag_effect,team=blue] run tag @s[team=!red,team=!blue,predicate=map:in_red] add in_flag_effect
execute if entity @e[tag=in_flag_effect,team=red] run team join red @s[team=!blue,predicate=map:in_blue]
execute if entity @e[tag=in_flag_effect,team=blue] run team join blue @s[team=!red,predicate=map:in_red]
