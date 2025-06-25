#cooldown, with fix + random pattern
execute if entity @s[tag=red_crystal] run scoreboard players operation @s genericCD = beemCD red
execute if entity @s[tag=blue_crystal] run scoreboard players operation @s genericCD = beemCD blue
execute store result score #randomBeem calculator run random value 1..60
scoreboard players operation @s genericCD += #randomBeem calculator

#choose victim, apply damage
execute if entity @s[tag=red_crystal] if score beemLevel red matches 2.. run tag @e[tag=!invOnVehicle,type=#game:fly,predicate=map:in_red,limit=1,sort=nearest,team=!red,tag=!vand_altar] add crystal_targeted
execute if entity @s[tag=red_crystal] unless entity @e[tag=crystal_targeted] run tag @e[tag=!invOnVehicle,type=#game:mobs,predicate=map:in_red,limit=1,sort=nearest,team=!red,tag=!vand_altar] add crystal_targeted

execute if entity @s[tag=blue_crystal] if score beemLevel blue matches 2.. run tag @e[tag=!invOnVehicle,type=#game:fly,predicate=map:in_blue,limit=1,sort=nearest,team=!blue,tag=!vand_altar] add crystal_targeted
execute if entity @s[tag=blue_crystal] unless entity @e[tag=crystal_targeted] run tag @e[tag=!invOnVehicle,type=#game:mobs,predicate=map:in_blue,limit=1,sort=nearest,team=!blue,tag=!vand_altar] add crystal_targeted

execute if entity @e[tag=crystal_targeted,type=#game:mobs] at @s run playsound arrow:event.laser_beem master @a ~ ~ ~ 0.5
execute as @e[tag=crystal_targeted,type=#game:mobs] run data modify storage run dirtRun set from entity @s Pos
execute if entity @e[tag=crystal_targeted,type=#game:mobs] run function game:run/dirt/lazer
execute if entity @s[tag=red_crystal] as @e[limit=1,sort=nearest,tag=crystal_targeted] run function game:run/crystal/victim_self_red
execute if entity @s[tag=blue_crystal] as @e[limit=1,sort=nearest,tag=crystal_targeted] run function game:run/crystal/victim_self_blue