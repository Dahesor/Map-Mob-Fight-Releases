execute unless score final_camera Data matches 1.. as @a[scores={Death=1..}] run function game:death/self
execute if score final_camera Data matches 1.. run return run function game:death/final/ticker


execute unless score debug Data matches 1 run scoreboard players add GameLength Data 1
execute if score #loop_20 calculator matches 10 run function game:run/second
function game:run/hint/main
function game:run/resources/ticker
function game:run/dirt/tick
function game:run/crystal/ticker
function game:plugin/particle_tick
function game:shop/netherite/checker
function game:utility/creeper_storm/tick
function game:run/netherite/villager/tick
clear @a[gamemode=adventure] #game:clear
scoreboard players remove @a[scores={deathSourceCD=1..}] deathSourceCD 1
execute as @e[type=end_crystal,tag=beem_lazer] run function game:run/dirt/crystal_self
execute as @a[scores={revive_cooldown=-20..}] run function game:death/revive/countdown
execute as @a[team=!] run function game:player/self
execute as @e[type=item,nbt={Item:{tag:{isConstant:1b},id:"minecraft:crossbow"}}] at @s run function game:utility/return_arrow
kill @e[type=item,nbt={Item:{tag:{isConstant:1b}}}]
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run function game:player/specials/thundering_arrow
execute as @e[type=#arrows,nbt={inGround:1b,custom_potion_effects:[{}]},tag=!crossed_mid] on origin run advancement grant @s only lobby:wrong_side
kill @e[type=#arrows,nbt={inGround:1b,custom_potion_effects:[{}]},tag=!actived]
execute unless score doArrowLandPosCheck Options matches 1.. run tag @e[type=#arrows,nbt={custom_potion_effects:[{}]}] add actived
execute as @e[type=#arrows,nbt={custom_potion_effects:[{}]},predicate=map:middle_area] run function game:plugin/arrow_mid
execute as @e[tag=ticking] run function game:run/mob_tick/redirect
execute if score #loop_20 calculator matches 1 as @e[tag=second_ticking] run function game:run/mob_second/redirect
kill @e[type=arrow,nbt=!{custom_potion_effects:[{}]},predicate=map:middle_area]
kill @e[type=snowball,predicate=map:middle_area]
kill @e[type=egg,predicate=map:middle_area]
kill @e[type=bat,predicate=map:middle_area]
kill @e[type=trident,predicate=map:middle_area]
kill @e[type=experience_orb]
kill @a[gamemode=adventure,predicate=map:too_high]
execute as @e[type=spectral_arrow] run data merge entity @s {Duration:1}
execute as @e[type=tnt,nbt={fuse:1s}] run function game:plugin/tnt/specialize
execute if score creeperGriefing Options matches 1 as @e[type=creeper,tag=!not_effected,predicate=game:places/in_gaming_area] run function game:plugin/creeper_self
function game:end/time_check
function game:utility/over_half/check
function game:end/check/score
execute as @e[tag=speedy_partical] at @s run function game:plugin/particles/speedy
execute as @e[type=area_effect_cloud,nbt={effects:[{id:"minecraft:dolphins_grace",show_particles:0b}]}] at @s run function game:utility/area_cloud_specialize

execute as @e[type=item,nbt={Item:{tag:{isGameMarkerItem:1b},id:"minecraft:debug_stick"}}] at @s run function game:utility/dirt_expander
execute as @e[type=item,nbt={Item:{tag:{gameItem:{id:"repair_tool"}},id:"minecraft:slime_ball"}}] at @s run function game:run/creeper/tool_ticker

execute if score GameMode Data matches 2 run function game:run/gamemodes/thunder/tick
execute if score GameMode Data matches 3 run function game:run/gamemodes/villager/tick
execute if score GameMode Data matches 4 run function game:run/gamemodes/elimination/tick