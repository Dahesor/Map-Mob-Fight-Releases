scoreboard players add @s hpPotionCD 1

attribute @s generic.max_health modifier remove 9-a-d-d-f
execute if score @s hpPotionCD matches 1 run attribute @s minecraft:generic.max_health modifier add 9-a-d-d-f "repair_limit" -20.0 add
execute if score @s hpPotionCD matches 2 run attribute @s minecraft:generic.max_health modifier add 9-a-d-d-f "repair_limit" -40.0 add
execute if score @s hpPotionCD matches 3 run attribute @s minecraft:generic.max_health modifier add 9-a-d-d-f "repair_limit" -60.0 add
execute if score @s hpPotionCD matches 4 run attribute @s minecraft:generic.max_health modifier add 9-a-d-d-f "repair_limit" -80.0 add
execute if score @s hpPotionCD matches 5.. run attribute @s minecraft:generic.max_health modifier add 9-a-d-d-f "repair_limit" -98.0 add

execute store result score $hp calculator run data get entity @s Health
execute if score @s hpPotionCD matches 1 if score $hp calculator matches 79.. run data merge entity @s {Health:80.0f}
execute if score @s hpPotionCD matches 2 if score $hp calculator matches 59.. run data merge entity @s {Health:60.0f}
execute if score @s hpPotionCD matches 3 if score $hp calculator matches 39.. run data merge entity @s {Health:40.0f}
execute if score @s hpPotionCD matches 4 if score $hp calculator matches 19.. run data merge entity @s {Health:20.0f}
execute if score @s hpPotionCD matches 5.. if score $hp calculator matches 1.. run data merge entity @s {Health:2.0f}

particle minecraft:damage_indicator ~ ~1.5 ~ 0.3 0.3 0.3 0.1 40 normal @a
function game:utility/repair_golem_limit/overtime
return 1