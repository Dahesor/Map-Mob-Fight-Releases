scoreboard players operation $seg calculator = @s Item.power_star
scoreboard players operation $seg calculator %= #44 calculator
execute unless score $seg calculator matches 0 run return fail
scoreboard players operation $seg calculator = @s Item.power_star
scoreboard players operation $seg calculator /= #44 calculator

execute if score $seg calculator matches 10 run return run playsound arrow:star.seg_1 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 9 run return run playsound arrow:star.seg_2 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 8 run return run playsound arrow:star.seg_3 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 7 run return run playsound arrow:star.seg_4 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 6 run return run playsound arrow:star.seg_5 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 5 run return run playsound arrow:star.seg_6 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 4 run return run playsound arrow:star.seg_7 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 3 run return run playsound arrow:star.seg_8 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 2 run return run playsound arrow:star.seg_9 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
execute if score $seg calculator matches 1 run return run playsound arrow:star.seg_10 master @a[tag=!temp.power_star_sound] ~ ~ ~ 2.5 1 0.03
