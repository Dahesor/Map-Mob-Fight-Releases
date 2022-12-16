tag @e[type=#game:mobs,tag=mob_resolved,team=!red,tag=!blue,predicate=map:in_blue] add in_flag_effect
team join red @e[tag=in_flag_effect,predicate=map:in_blue]

schedule function game:plugin/flag/red_end 35s