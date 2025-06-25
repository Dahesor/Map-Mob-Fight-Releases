tag @e[type=villager,tag=villager_marker,limit=1,sort=nearest,distance=..3] add the_villager
execute store result score #Max_villager_health calculator run attribute @e[type=villager,tag=the_villager,limit=1] generic.max_health get 30
scoreboard players operation #Max_villager_health calculator /= #10 calculator
execute store result score #villager_health calculator run data get entity @e[type=villager,tag=the_villager,limit=1] Health 10
scoreboard players operation #villager_health calculator += #Max_villager_health calculator
execute store result score #Max_villager_health calculator run attribute @e[type=villager,tag=the_villager,limit=1] generic.max_health get 10
scoreboard players operation #villager_health calculator < #Max_villager_health calculator
execute store result entity @e[type=villager,tag=the_villager,limit=1] Health float 0.1 run scoreboard players get #villager_health calculator
tag @e[type=villager,tag=the_villager] remove the_villager

particle heart ~ ~1 ~ 0.5 0.5 0.5 0.4 10 normal @a
