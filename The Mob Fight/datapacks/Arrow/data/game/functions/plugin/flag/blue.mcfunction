tag @e[type=#game:mobs,tag=mob_resolved,team=!red,team=!blue,predicate=map:in_red,distance=0..] add in_flag_effect
team join blue @e[type=#game:mobs,tag=in_flag_effect,predicate=map:in_red,distance=0..]
tag @e[type=end_crystal,predicate=map:in_blue] add in_flag_effect
effect give @e[type=#game:mobs,tag=mob_resolved,predicate=map:in_red,distance=0..,tag=in_flag_effect] strength 30 0

schedule function game:plugin/flag/blue_end 120s

#>
#@private
#alias uuid flag 8e5f3313-43a6-42b0-87b7-35637aed701a

execute as @a[team=blue] run attribute @s generic.armor_toughness modifier add 8e5f3313-43a6-42b0-87b7-35637aed701a '"\\ue903"' 0.0 add

scoreboard players operation flag_cd blue = $gametime Data
scoreboard players add flag_cd blue 4800