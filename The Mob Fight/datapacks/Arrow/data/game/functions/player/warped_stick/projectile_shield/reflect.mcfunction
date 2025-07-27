summon item ^ ^ ^ {Age:5994,Item:{id:"barrier",Count:1b},PickupDelay:1000s,Tags:["del"],Motion:[0.0d,-0.01d,0.0d],NoGravity:1b}
tag @s add arrow_shielded

execute store result entity @s Motion[0] double -0.0075 run data get entity @s Motion[0] 100
execute store result entity @s Motion[1] double -0.0075 run data get entity @s Motion[1] 100
execute store result entity @s Motion[2] double -0.0075 run data get entity @s Motion[2] 100

scoreboard players set $reflacted calculator 1