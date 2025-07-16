tag @s remove using_UpRocket
effect clear @s jump_boost
particle cloud ~ ~0.1 ~ 0.5 0.2 0.5 0 180 normal @a
playsound entity.generic.explode master @a ~ ~ ~
tag @s add UpRocketFinish
particle explosion_emitter ~ ~0.1 ~ 0.3 0.2 0.3 0 1 normal @a
execute as @e[type=#game:mobs,distance=..4] run function game:player/warped_stick/up_rocket/enemy_self
tag @s remove UpRocketFinish