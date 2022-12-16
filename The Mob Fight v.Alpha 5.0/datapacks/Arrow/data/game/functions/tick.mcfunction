execute if score game Data matches 1.. run function game:run/tick

execute as @e[type=arrow,predicate=game:actived_arrow,nbt={CustomPotionEffects:[{Id:32b,Amplifier:50b}]}] at @s run function game:arrows/effects
execute as @e[type=arrow,predicate=game:actived_arrow,nbt=!{CustomPotionEffects:[{Id:32b,Amplifier:50b}]}] at @s align xz positioned ~0.5 ~0.1 ~0.5 run function game:plugin/unstack/main
kill @e[type=falling_block,predicate=map:in_void]
function game:plugin/announcement/redirect
execute as @e[tag=ticking] run function game:run/mob_tick/redirect
execute as @e[tag=second_ticking] run function game:run/mob_second/redirect
execute as @e[type=marker,tag=spawnCenterR] at @s run function game:plugin/ranged_spawner/self

scoreboard players add #loop_3 calculator 1
execute if score #loop_3 calculator matches 3.. run scoreboard players set #loop_3 calculator 0
execute if score #loop_3 calculator matches 0 run function game:update
scoreboard players add #loop_20 calculator 1
execute if score #loop_20 calculator matches 20.. run scoreboard players set #loop_20 calculator 0
execute if score #loop_20 calculator matches 1 run function game:second
execute as @a[scores={warped_stick=1..}] run function game:player/warped_stick_specialize