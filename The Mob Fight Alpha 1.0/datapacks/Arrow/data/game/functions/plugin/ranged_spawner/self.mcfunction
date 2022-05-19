execute if entity @s[tag=inactivedSpawnCenterR] if data entity @s {data:{spawn:{mode:"COMPRESSED"}}} run function game:plugin/ranged_spawner/active/compressed/proceed
execute if entity @s[tag=inactivedSpawnCenterR] run function game:plugin/ranged_spawner/active/normal/proceed
scoreboard players set #s$loop calculator 1
scoreboard players add @s genericCD 1
execute if data entity @s data.spawn.time store result score #s$loop calculator run data get entity @s data.spawn.time
execute if score @s genericCD >= #s$loop calculator run function game:plugin/ranged_spawner/spawn/loop_start
execute unless data entity @s data.spawn.entity[0] run kill @s


