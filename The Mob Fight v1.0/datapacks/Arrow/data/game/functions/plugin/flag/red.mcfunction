tag @e[type=#game:mobs,tag=mob_resolved,team=!red,tag=!blue,predicate=map:in_blue] add in_flag_effect
team join red @e[tag=in_flag_effect,predicate=map:in_blue]
tag @e[type=end_crystal,predicate=map:in_red] add in_flag_effect

schedule function game:plugin/flag/red_end 120s

#>
#@private
#alias uuid flag 8e5f3313-43a6-42b0-87b7-35637aed701a 

execute as @a[team=red] run attribute @s generic.armor_toughness modifier add 8e5f3313-43a6-42b0-87b7-35637aed701a '"\\ue903"' 0.0 add
