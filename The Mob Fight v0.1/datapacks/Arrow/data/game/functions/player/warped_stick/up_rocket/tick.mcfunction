execute if entity @s[tag=using_UpRocket_3] run effect clear @s levitation
tag @s remove using_UpRocket_3
execute if entity @s[tag=using_UpRocket_2] run tag @s add using_UpRocket_3
execute if entity @s[tag=using_UpRocket_1] run tag @s add using_UpRocket_2
execute unless entity @s[tag=using_UpRocket_1] run tag @s remove using_UpRocket_2
tag @s remove using_UpRocket_1

particle cloud ~ ~ ~ 0.05 0.05 0.05 0 1 normal @a
execute if entity @s[nbt={OnGround:1b},tag=!using_UpRocket_1,tag=!using_UpRocket_2,tag=!using_UpRocket_3] run function game:player/warped_stick/up_rocket/over