execute unless score debug Data matches 1 run scoreboard players add GameLength Data 1
execute if score #loop_20 calculator matches 10 run function game:run/second


function game:run/hint/main
function game:run/resources/ticker
function game:run/dirt/tick
function game:run/crystal/ticker
function game:plugin/particle_tick
clear @a #game:clear
scoreboard players remove @a[scores={deathSourceCD=1..}] deathSourceCD 1
execute as @e[type=end_crystal,tag=beem_lazer] run function game:run/dirt/crystal_self
execute as @a[scores={Death=1..}] run function game:death/self
execute as @a[scores={revive_cooldown=1..}] run function game:death/revive/countdown
execute as @a run function game:player/self
kill @e[type=item,nbt={Item:{tag:{isConstant:1b}}}]
kill @e[type=#arrows,nbt={inGround:1b,CustomPotionEffects:[{}]},tag=!actived]
tag @e[type=#arrows,nbt={CustomPotionEffects:[{}]},predicate=map:middle_area] add actived
kill @e[type=#arrows,nbt=!{CustomPotionEffects:[{}]},predicate=map:middle_area]
kill @e[type=snowball,predicate=map:middle_area]
kill @e[type=egg,predicate=map:middle_area]
kill @e[type=bat,predicate=map:middle_area]
kill @e[type=experience_orb]
execute as @e[type=tnt,nbt={Fuse:1s}] run function game:plugin/tnt/specialize
execute as @e[type=creeper,tag=!not_effected,predicate=game:places/in_gaming_area] run function game:plugin/creeper_self
function game:end/time_check
execute if score score red >= TargetScore Options unless score score blue >= TargetScore Options run function game:end/red_win
execute if score score blue >= TargetScore Options unless score score red >= TargetScore Options run function game:end/blue_win
execute if score score red >= TargetScore Options if score score blue >= TargetScore Options run function game:end/draw_check
execute as @e[nbt={Attributes:[{Name:"minecraft:generic.movement_speed",Modifiers:[{Name:"speedy_movement_speed"}]}]}] at @s run function game:plugin/particles/speedy 
execute as @e[type=area_effect_cloud,nbt={Effects:[{Id:30b,ShowParticles:0b}]}] at @s run function game:run/creeper/cloud_self
