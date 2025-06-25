
#>
#@private
#alias uuid 8e5f3313-43a6-42b0-87b7-35637aed704e Speedy movement speed
#>
#@private
#alias uuid 8e5f3313-43a6-42b0-87b7-35637aed704f Speedy movement speed

execute as @a[team=blue] run attribute @s generic.movement_speed modifier remove 8e5f3313-43a6-42b0-87b7-35637aed704e
execute as @e[type=#game:mobs,predicate=map:in_red] run attribute @s generic.movement_speed modifier remove 8e5f3313-43a6-42b0-87b7-35637aed704e
execute as @a[team=blue] run attribute @s generic.attack_speed modifier remove 8e5f3313-43a6-42b0-87b7-35637aed704f
execute as @e[type=#game:mobs,predicate=map:in_red] run attribute @s generic.attack_speed modifier remove 8e5f3313-43a6-42b0-87b7-35637aed704f
execute as @a[team=blue] run attribute @s generic.armor_toughness modifier remove 8e5f3313-43a6-42b0-87b7-35637aed704f
scoreboard players set onSpeedyEffect blue 0

tag @a[team=blue] remove speedy_partical
tag @e[type=#game:mobs,predicate=map:in_red] remove speedy_partical