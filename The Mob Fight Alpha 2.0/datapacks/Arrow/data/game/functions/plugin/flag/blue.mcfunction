tag @e[type=#game:mobs,tag=mob_resolved,team=!red,tag=!blue,predicate=map:in_red] add in_flag_effect
team join blue @e[tag=in_flag_effect,predicate=map:in_red]

schedule function game:plugin/flag/blue_end 35s