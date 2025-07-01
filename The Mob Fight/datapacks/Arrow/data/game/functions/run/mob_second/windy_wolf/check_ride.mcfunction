execute if score $vehicle_found calculator matches 1.. run return fail
execute on vehicle run return fail
execute on passengers run return fail
execute if entity @s[tag=need_vehicle] run return fail
execute if entity @s[tag=needPassenger] run return fail

summon item_display ~ ~ ~ {Tags:["windy_wolf","need_vehicle","del","ticking"]}

ride @e[type=item_display,limit=1,distance=..2,tag=windy_wolf] mount @s
execute on passengers run tag @s remove windy_wolf
execute on passengers run ride @e[type=wolf,limit=1,distance=..10,tag=windy_wolf,tag=target_windy_wolf] mount @s
scoreboard players set $vehicle_found calculator 1