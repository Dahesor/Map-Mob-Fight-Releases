execute on vehicle run return run function game:run/mob_second/windy_wolf/on_ride
execute on passengers run return fail
scoreboard players add @s genericCD 1
execute unless score @s genericCD matches 3.. run return fail
scoreboard players set @s genericCD 0
scoreboard players set $vehicle_found calculator 0
tag @s add target_windy_wolf
execute as @e[type=#game:mobs,distance=..5,tag=!target_windy_wolf] run function game:run/mob_second/windy_wolf/check_ride
tag @s remove target_windy_wolf
execute if score $vehicle_found calculator matches 1.. run scoreboard players set @s genericCD -5
scoreboard players reset $vehicle_found calculator