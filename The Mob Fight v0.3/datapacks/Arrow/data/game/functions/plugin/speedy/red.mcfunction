
#>
#@private
#alias uuid 8e5f3313-43a6-42b0-87b7-35637aed704e Speedy movement speed
#>
#@private
#alias uuid 8e5f3313-43a6-42b0-87b7-35637aed704f Speedy movement speed

execute as @a[team=red] run attribute @s generic.movement_speed modifier add 8e5f3313-43a6-42b0-87b7-35637aed704e "speedy_movement_speed" 0.20 multiply_base
execute as @e[type=#game:mobs,predicate=map:in_blue] run attribute @s generic.movement_speed modifier add 8e5f3313-43a6-42b0-87b7-35637aed704e "speedy_movement_speed" 0.20 multiply_base
execute as @a[team=red] run attribute @s generic.attack_speed modifier add 8e5f3313-43a6-42b0-87b7-35637aed704f "speedy_attack_speed" 0.32 multiply_base
execute as @e[type=#game:mobs,predicate=map:in_blue] run attribute @s generic.attack_speed modifier add 8e5f3313-43a6-42b0-87b7-35637aed704f "speedy_attack_speed" 0.32 multiply_base
execute as @a[team=red] run attribute @s generic.armor_toughness modifier add 8e5f3313-43a6-42b0-87b7-35637aed704f '"\\ue900"' 0.0 add
scoreboard players set onSpeedyEffect red 1

execute if score magic_occult red matches 1 run schedule function game:plugin/speedy/red_end 90s
execute if score magic_occult red matches 2 run schedule function game:plugin/speedy/red_end 105s
execute if score magic_occult red matches 3.. run schedule function game:plugin/speedy/red_end 110s