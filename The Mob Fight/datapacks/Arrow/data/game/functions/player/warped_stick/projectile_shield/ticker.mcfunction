scoreboard players remove @s Item.arrow_shield 1

execute as @e[type=arrow,distance=..5,nbt={pickup:0b,inGround:0b},tag=!arrow_shielded] at @s run function game:player/warped_stick/projectile_shield/block
execute as @e[type=trident,distance=..5,nbt={pickup:0b,inGround:0b},tag=!arrow_shielded] at @s run function game:player/warped_stick/projectile_shield/block
execute as @e[type=small_fireball,distance=..5,tag=!arrow_shielded] at @s run function game:player/warped_stick/projectile_shield/block

scoreboard players set $reflacted calculator 0
execute if predicate map:in_red as @e[type=#arrows,distance=..5,tag=!arrow_shielded,tag=blue_arrow] at @s run function game:player/warped_stick/projectile_shield/reflect
execute if predicate map:in_blue as @e[type=#arrows,distance=..5,tag=!arrow_shielded,tag=red_arrow] at @s run function game:player/warped_stick/projectile_shield/reflect
execute if score $reflacted calculator matches 1 run advancement grant @s only lobby:return_arrow
scoreboard players reset $reflacted

execute as @e[type=snowball,distance=..3.5] at @s run function game:player/warped_stick/projectile_shield/block
execute as @e[type=potion,distance=..3.5] at @s run function game:player/warped_stick/projectile_shield/block

execute if score @s Item.arrow_shield matches 1 run attribute @s generic.armor_toughness modifier remove a-b-c-d-e