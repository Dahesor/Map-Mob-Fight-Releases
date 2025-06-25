execute if data entity @s data.spawn.entity[0] run function game:plugin/ranged_spawner/spawn/pick_pos
execute if data entity @s data.spawn.entity[0] run function game:plugin/ranged_spawner/spawn/summon
scoreboard players remove #s$max calculator 1
execute if score #s$max calculator matches 1.. run function game:plugin/ranged_spawner/spawn/loop