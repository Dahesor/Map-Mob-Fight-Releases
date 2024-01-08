team leave @e[team=red,tag=in_flag_effect,type=!#game:join_team]
tag @e[predicate=map:in_blue] remove in_flag_effect
tellraw @a[team=red] [{"translate":"chat.head.game","color": "red"}," ",{"translate":"号令之旗","color": "gold"},{"translate":"has_end","color": "green","italic": false}]

#>
#@private
#alias uuid 8e5f3313-43a6-42b0-87b7-35637aed701a flag
execute as @a[team=red] run attribute @s generic.armor_toughness modifier remove 8e5f3313-43a6-42b0-87b7-35637aed701a