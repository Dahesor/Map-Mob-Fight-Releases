scoreboard players add @s genericCD 3
summon arrow ~ ~ ~ {NoGravity:0b,Tags:["new_temp","ticking","magic_ball","mg"],damage:0.8d}
data modify entity @e[type=arrow,tag=new_temp,limit=1] Owner set from entity @s UUID
execute as @e[tag=new_temp,type=arrow] facing entity @a[limit=1,sort=nearest,gamemode=adventure,distance=..18] eyes positioned ^ ^ ^4 run function game:run/mob_tick/mg/splash
execute as @e[tag=new_temp,tag=!shot,type=arrow] facing entity @e[limit=1,sort=nearest,type=#game:magic_target,distance=..18] eyes positioned ^ ^ ^4 run function game:run/mob_tick/mg/splash
tag @e[type=arrow,tag=new_temp] remove new_temp
execute if score @s genericCD matches 100.. run scoreboard players set @s genericCD -40
