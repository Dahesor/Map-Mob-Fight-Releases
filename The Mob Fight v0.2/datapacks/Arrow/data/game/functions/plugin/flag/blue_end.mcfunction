team leave @e[team=blue,tag=in_flag_effect,type=!#game:join_team]
tag @e[predicate=map:in_red] remove in_flag_effect
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "red"}," ",{"translate":"号令之旗","color": "gold"},{"translate":"has_end","color": "green","italic": false}]

#>
#@private
#alias uuid flag 8e5f3313-43a6-42b0-87b7-35637aed701a

execute as @a[team=blue] run attribute @s generic.armor_toughness modifier remove 8e5f3313-43a6-42b0-87b7-35637aed701a