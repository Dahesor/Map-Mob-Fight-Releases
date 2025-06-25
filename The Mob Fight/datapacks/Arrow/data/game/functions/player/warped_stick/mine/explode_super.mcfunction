tag @s add temp.FakeDamage
particle minecraft:explosion_emitter ~ ~1 ~
playsound entity.generic.explode player @a ~ ~ ~ 0.9 0.6
execute as @e[type=#game:mobs,distance=..2.3] run damage @s 75 explosion
execute as @e[type=#game:mobs,distance=2.3..3.2] run damage @s 45 explosion
execute as @e[type=#game:mobs,distance=3.2..4] run damage @s 25 explosion
execute as @e[type=#game:mobs,distance=4..4.5] run damage @s 5 explosion
execute as @a[distance=..1.4,gamemode=adventure] run damage @s 6 player_explosion by @e[type=marker,tag=temp.FakeDamage,tag=mine,limit=1]
execute as @a[distance=1.5..3,gamemode=adventure] run damage @s 3 player_explosion by @e[type=marker,tag=temp.FakeDamage,tag=mine,limit=1]
execute as @a[distance=3..3.5,gamemode=adventure] run damage @s 1.5 player_explosion by @e[type=marker,tag=temp.FakeDamage,tag=mine,limit=1]
scoreboard players operation !temp match = @s match
execute as @e[type=item_display,tag=mine] if score @s match = !temp match run kill
kill