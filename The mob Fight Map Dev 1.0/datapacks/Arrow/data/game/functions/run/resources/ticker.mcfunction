scoreboard players add ore_ticker red 1
scoreboard players add ore_ticker blue 1

execute if score ore_ticker red >= oreCoolDown red run function game:run/resources/get_red
execute if score ore_ticker blue >= oreCoolDown blue run function game:run/resources/get_blue

execute as @e[type=marker,tag=ore_marker,nbt={data:{initialized:1b}}] at @s run function game:run/resources/checker/marker