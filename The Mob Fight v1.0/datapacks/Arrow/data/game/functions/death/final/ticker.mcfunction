scoreboard players add final_camera Data 1
gamemode spectator @a[tag=!final_camera]
gamemode adventure @a[tag=final_camera]
execute if score final_camera Data matches 60.. at @e[type=marker,limit=1,tag=final_camera] positioned ~2.5 ~3.5 ~2.5 facing entity @e[type=marker,limit=1,tag=final_camera] feet run tp @e[type=vex,tag=final_camera] ~ ~ ~ ~ ~
execute if score final_camera Data matches 90 run function game:death/final/kill_wait
effect give @a[tag=final_camera] instant_health 1 10 true
effect give @a[tag=final_camera] wither 2 0 true
effect give @a[tag=final_camera] darkness 1 10 true
tp @a[limit=1,tag=final_camera] @e[type=marker,limit=1,tag=final_camera]
execute as @e[type=vex,tag=final_camera] at @s facing entity @e[type=marker,limit=1,tag=final_camera] feet run tp @s ~ ~ ~ ~ ~
execute as @a[tag=!final_camera] at @s run spectate @e[type=vex,tag=final_camera,limit=1,sort=nearest] @s

execute if score final_camera Data matches 5..60 as @e[type=vex,tag=final_camera] at @s run function game:death/final/vex/calc_motion


execute if score final_camera Data matches 148.. run function game:death/final/end