# as all villager markers:

#>
# @private
# Villager Health
#define score_holder #villager_health

#>
# @private
# Villager Health Max
#define score_holder #Max_villager_health

tag @e[type=villager,tag=villager_marker,limit=1,sort=nearest,distance=..3] add the_villager

execute unless entity @e[type=villager,tag=the_villager] run return run function game:run/netherite/villager/marker/check_witch


execute store result score #villager_health calculator run data get entity @e[type=villager,tag=the_villager,limit=1] HurtTime
execute unless score #villager_health calculator matches 1.. run scoreboard players set @s genericCD 0
execute unless score #villager_health calculator matches 1.. if score @s hpPotionCD matches 1.. run scoreboard players remove @s hpPotionCD 1
execute if score #villager_health calculator matches 1.. run scoreboard players add @s genericCD 1
execute if score #villager_health calculator matches 1.. run scoreboard players set @s hpPotionCD 5
execute if score @s genericCD matches 3 run scoreboard players set @s genericCD 1
data merge entity @e[type=villager,tag=the_villager,limit=1] {Glowing:1b}

execute if score @s genericCD matches 1.. run function game:run/netherite/villager/marker/flash

execute store result score #villager_health calculator run data get entity @e[type=villager,tag=the_villager,limit=1] Health 100
execute store result score #Max_villager_health calculator run attribute @e[type=villager,tag=the_villager,limit=1] generic.max_health get 10

scoreboard players operation #villager_health calculator /= #Max_villager_health calculator
execute store result score @s calculator run data get entity @s data.display_hp
execute if score @s calculator = #villager_health calculator run return run tag @e[type=villager,tag=the_villager,limit=1] remove the_villager

execute store result entity @s data.display_hp int 1 run scoreboard players get #villager_health calculator
data merge storage run {V:{fill:'',white:''}}
function game:run/netherite/villager/marker/get_display
execute as @e[type=villager,tag=the_villager,limit=1] run function game:run/netherite/villager/marker/set_display with storage run V

tag @e[type=villager,tag=the_villager,limit=1] remove the_villager