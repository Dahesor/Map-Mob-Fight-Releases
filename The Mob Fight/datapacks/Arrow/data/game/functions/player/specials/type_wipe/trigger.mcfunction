advancement revoke @s only game:utility/use_type_wipe
playsound entity.wither.break_block master @a ~ ~ ~
tag @s add temp.Hurt
execute as @e[type=#game:mobs,distance=..6,nbt={HurtTime:10s}] run function game:player/specials/type_wipe/check_player
tag @s remove temp.Hurt
execute if entity @e[type=#game:mobs,tag=temp.Damage,distance=..10] run item replace entity @s weapon with air
execute as @e[type=#game:mobs,tag=temp.Damage,distance=..10] at @s run function game:player/specials/type_wipe/get_data
kill @e[type=#game:mobs,tag=temp.Damage]
tag @e[type=#game:mobs,tag=temp.Damage] remove temp.Damage