execute at @e[type=armor_stand,tag=altar_red_shop,limit=1] run playsound arrow:event.fixed_sound_backup master @a ~ ~ ~ 
execute as @e[type=armor_stand,tag=altar_red_shop,limit=1] at @s run tp @s ~ ~ ~ ~90 ~
execute as @e[type=armor_stand,tag=altar_red_shop,limit=1] at @s run function game:shop/netherite/animation/spread_red/thunder
execute as @e[type=armor_stand,tag=altar_red_shop,limit=1] at @s run tp @s ~ ~ ~ ~ ~-90
execute as @e[type=armor_stand,tag=altar_red_shop,limit=1] at @s run function game:shop/netherite/animation/spread_red/bats