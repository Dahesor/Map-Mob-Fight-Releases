scoreboard players set final_camera Data 1
kill @e[type=marker,tag=final_camera]
summon marker 0 0 0 {Tags:["final_camera"]}
data modify entity @e[type=marker,limit=1,tag=final_camera] Pos set from storage run final_kill.Pos
gamemode adventure @a[tag=final_camera]
effect give @a[tag=final_camera] instant_health 1 10 true
effect give @a[tag=final_camera] darkness 1 10 true
effect give @a[tag=final_camera] wither 2 0 true
execute if data storage run final_kill{cause:"villager"} at @e[type=marker,limit=1,tag=final_camera] run summon villager ~ ~ ~ {Tags:["final_camera"],NoAI:1b,Invulnerable:1b,Glowing:1b,Team:"red"}

execute at @e[type=marker,limit=1,tag=final_camera] if predicate map:in_blue run team join blue @e[type=villager,limit=1,tag=final_camera]

tp @a[limit=1,tag=final_camera] @e[type=marker,limit=1,tag=final_camera]
gamemode spectator @a[tag=!final_camera]
execute as @a at @s run playsound arrow:event.final master @s ~ ~ ~ 1 1 1

execute as @a[tag=!final_camera] at @s run function game:death/final/vex/ride