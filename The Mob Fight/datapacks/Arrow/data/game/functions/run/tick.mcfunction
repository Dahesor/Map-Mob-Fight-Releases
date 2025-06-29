execute unless score final_camera Data matches 1.. as @a[scores={Death=1..}] run function game:death/self
execute if score final_camera Data matches 1.. run return run function game:death/final/ticker


execute unless score debug Data matches 1 run scoreboard players add GameLength Data 1
scoreboard players add LogTime Data 1
execute if score #loop_20 calculator matches 10 run function game:run/second
function game:run/hint/main
function game:run/resources/ticker
function game:run/dirt/tick
function game:shop/netherite/checker
function game:utility/creeper_storm/tick
function game:run/netherite/villager/tick
execute as @e[type=end_crystal,tag=game_crystal] at @s run function game:run/crystal/ticker
execute if score nextRandomItem Data matches -2147483648..2147483647 run function game:shop/random/exe
execute as @a[tag=!spectator] at @s run function game:player/tick
execute as @a[gamemode=spectator,tag=spectator] at @s run function lobby:spectator/tick

execute as @e[type=end_crystal,tag=beem_lazer] run function game:run/dirt/crystal_self
execute as @e[type=trident,tag=!resloved_trident] run function game:player/specials/trident/new_trident
execute as @e[type=item,nbt={Item:{tag:{isConstant:1b},id:"minecraft:crossbow"}}] at @s run function game:utility/return_arrow
kill @e[type=item,nbt={Item:{tag:{isConstant:1b}}}]
execute as @e[type=spectral_arrow,nbt={inGround:1b}] at @s run function game:player/specials/thundering_arrow
execute as @e[type=#arrows,nbt={inGround:1b,custom_potion_effects:[{}]},tag=!crossed_mid] on origin run advancement grant @s only lobby:wrong_side
execute as @e[type=#arrows,nbt={custom_potion_effects:[{}]}] run function game:plugin/get_mob_arrow_side

execute as @e[tag=ticking] run function game:run/mob_tick/redirect
execute if score #loop_20 calculator matches 1 as @e[tag=second_ticking] run function game:run/mob_second/redirect
execute as @e[type=arrow,nbt=!{custom_potion_effects:[{}]}] at @s run function game:plugin/player_arrow/self
kill @e[type=#game:mid_kill,predicate=map:middle_area]
kill @e[type=experience_orb]
execute as @e[type=spectral_arrow] run data merge entity @s {Duration:1}
execute as @e[type=tnt,nbt={fuse:1s}] run function game:plugin/tnt/specialize
execute if score creeperGriefing Options matches 1 as @e[type=creeper,tag=!not_effected,predicate=game:places/in_gaming_area] run function game:plugin/creeper_self
function game:end/time_check
function game:utility/over_half/check
function game:end/check/score
execute if function game:plugin/speedy/check_is_on positioned as @e[tag=speedy_partical] run function game:plugin/particles/speedy
execute as @e[type=area_effect_cloud,tag=!resloved_cloud] at @s run function game:utility/area_cloud_specialize

execute as @e[type=item,nbt={Item:{tag:{isGameMarkerItem:1b},id:"minecraft:debug_stick"}}] at @s run function game:utility/dirt_expander/e
execute as @e[type=item,nbt={Item:{tag:{gameItem:{id:"repair_tool"}},id:"minecraft:slime_ball"}}] at @s run function game:run/creeper/tool_ticker

execute if score GameMode Data matches 2 run function game:run/gamemodes/thunder/tick
execute if score GameMode Data matches 3 run function game:run/gamemodes/villager/tick
execute if score GameMode Data matches 4 run function game:run/gamemodes/elimination/tick