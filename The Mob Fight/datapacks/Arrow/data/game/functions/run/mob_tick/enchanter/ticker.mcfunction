execute unless score #loop_10 calculator matches 8 run return fail

scoreboard players set $is_clear calculator 0

data modify storage run suuid set value {id:""}
data modify storage run list_u set from entity @s data.targets
function game:run/mob_tick/enchanter/kill_self
execute store result score @s hpPotionCD if data storage run list_u[]
scoreboard players operation $index calculator = @s hpPotionCD
execute if score $index calculator matches 1.. on vehicle run effect give @s slowness 1 20 true
execute if score $index calculator matches 1.. run function game:run/mob_tick/enchanter/loop
data modify entity @s data.targets set from storage run list_u

scoreboard players add @s genericCD 1
execute unless score @s genericCD matches 5.. run return fail
execute if score @s hpPotionCD matches 3.. run return fail

execute unless entity @e[tag=!mob.enchanter,tag=!beacon,type=#game:mobs,distance=..10,tag=!enchanted] run return fail
playsound block.enchantment_table.use master @a ~ ~ ~ 1 0.9
execute as @e[tag=!mob.enchanter,tag=!beacon,type=#game:mobs,distance=..10,limit=1,sort=random,tag=!enchanted] facing entity @s eyes run function game:run/mob_tick/enchanter/selected

data modify entity @s data.targets append from storage run suuid
scoreboard players set @s genericCD -5