tag @a remove lowest_hp

scoreboard players set $min_hp calculator 1000
scoreboard players operation $min_hp calculator < @a[team=red,gamemode=adventure] health
execute as @a[team=red,gamemode=adventure] if score @s health = $min_hp calculator run function game:player/warped_stick/tp/update_red

scoreboard players set $min_hp calculator 1000
scoreboard players operation $min_hp calculator < @a[team=blue,gamemode=adventure] health
execute as @a[team=blue,gamemode=adventure] if score @s health = $min_hp calculator run function game:player/warped_stick/tp/update_blue

scoreboard players reset $min_hp calculator