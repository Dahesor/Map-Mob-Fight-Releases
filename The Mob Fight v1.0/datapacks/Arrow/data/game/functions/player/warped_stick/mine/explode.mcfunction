execute if entity @s[tag=temp.Mine.Super] run return run function game:player/warped_stick/mine/explode_super
playsound entity.generic.explode player @a ~ ~ ~ 0.9 1.4
particle minecraft:explosion ~ ~1 ~
execute as @e[type=#game:mobs,distance=..1.8] run damage @s 40 explosion
execute as @e[type=#game:mobs,distance=1.8..3] run damage @s 22 explosion
execute as @e[type=#game:mobs,distance=3..3.5] run damage @s 9 explosion
execute as @a[distance=..1.4,gamemode=adventure] run damage @s 3 player_explosion by @e[type=marker,tag=temp.FakeDamage,tag=mine,limit=1]
execute as @a[distance=1.5..3,gamemode=adventure] run damage @s 2 player_explosion by @e[type=marker,tag=temp.FakeDamage,tag=mine,limit=1]
execute as @a[distance=3..3.5,gamemode=adventure] run damage @s 0.4 player_explosion by @e[type=marker,tag=temp.FakeDamage,tag=mine,limit=1]
scoreboard players operation !temp match = @s match
execute as @e[type=item_display,tag=mine] if score @s match = !temp match run kill
kill