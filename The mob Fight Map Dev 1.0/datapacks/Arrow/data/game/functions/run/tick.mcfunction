execute if score #loop_20 calculator matches 10 run function game:run/second
function game:run/hint/main
function game:run/resources/ticker
function game:run/dirt/tick
function game:run/crystal/ticker
function game:shop/netherite/checker
function game:plugin/particle_tick
clear @a #game:clear
execute as @e[type=armor_stand,tag=altar_mark.red] run function game:shop/netherite/name_tick
execute as @e[type=armor_stand,tag=altar_mark.blue] run function game:shop/netherite/name_tick
execute as @e[type=end_crystal,tag=beem_lazer] run function game:run/dirt/crystal_self
execute as @a[scores={Death=1..}] run function game:death/self
execute as @a run function game:player/self
execute if score red Data >= TargetScore Options unless score blue Data >= TargetScore options run function game:end/red_win
execute if score blue Data >= TargetScore Options unless score red Data >= TargetScore options run function game:end/blue_win
execute if score red Data >= TargetScore Options if score blue Data >= TargetScore options run function game:end/draw_check
execute if score GameLength Data >= MaxGameLength Options run function game:end/draw_check
kill @e[type=item,nbt={Item:{tag:{isConstant:1b}}}]
kill @e[type=#arrows,nbt={inGround:1b,CustomPotionEffects:[{}]},tag=!actived]
tag @e[type=#arrows,nbt={CustomPotionEffects:[{}]},predicate=map:middle_area] add actived
kill @e[type=#arrows,nbt=!{CustomPotionEffects:[{}]},predicate=map:middle_area]
kill @e[type=experience_orb]
#scoreboard players add GameLength Data 1
execute as @e[type=zombie,tag=vand_altar] run data merge entity @s {Fire:-1s,Health:200.0f}

