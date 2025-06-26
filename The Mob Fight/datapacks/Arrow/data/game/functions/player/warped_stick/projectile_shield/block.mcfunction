execute if entity @s[type=potion] if function game:player/warped_stick/projectile_shield/potion_check run return fail



data modify entity @s Motion set value [0d,0d,0d]
summon item ^ ^ ^ {Age:5994,Item:{id:"barrier",Count:1b},PickupDelay:1000s,Tags:["del"],Motion:[0.0d,-0.01d,0.0d],NoGravity:1b}
tag @s add arrow_shielded
execute if entity @s[type=small_fireball] run kill
execute if entity @s[type=snowball] run kill @e[tag=snowball_child,type=marker,distance=..3]
execute if entity @s[type=snowball] run kill
execute if entity @s[type=potion] run kill