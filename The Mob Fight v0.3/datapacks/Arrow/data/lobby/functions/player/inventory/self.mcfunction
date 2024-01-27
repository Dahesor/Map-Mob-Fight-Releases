execute if entity @s[team=red] unless predicate lobby:red_inventory run function lobby:player/inventory/red
execute if entity @s[team=blue] unless predicate lobby:blue_inventory run function lobby:player/inventory/blue
execute if entity @s[team=,tag=!spectator] unless predicate lobby:random_inventory run function lobby:player/inventory/random
execute if entity @s[tag=spectator] unless predicate lobby:spec run function lobby:player/inventory/spectator