execute if score #loop_10 calculator matches 5 run function game:player/upgradeables/check
execute if score #loop_20 calculator matches 2 at @s run function game:player/reset_shop
execute if entity @s[tag=using_UpRocket] at @s run function game:player/warped_stick/up_rocket/tick