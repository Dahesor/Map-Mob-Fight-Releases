execute if entity @s[tag=villager_blue] run function game:run/netherite/villager/marker/red_get_score
execute if entity @s[tag=villager_red] run function game:run/netherite/villager/marker/blue_get_score

execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.8 2
summon firework_rocket ~ ~2 ~ {Invulnerable:1b,Life:0,LifeTime:6,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Flicker:1b,Colors:[I;65408,14641369,16726629],Type:4b}]}}}}
kill @s