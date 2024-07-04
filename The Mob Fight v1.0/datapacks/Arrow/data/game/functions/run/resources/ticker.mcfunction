scoreboard players add ore_ticker red 1
scoreboard players add ore_ticker blue 1

execute if entity @a[team=red,nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run scoreboard players add ore_ticker red 1
execute if entity @a[team=blue,nbt={active_effects:[{id:"minecraft:hero_of_the_village"}]}] run scoreboard players add ore_ticker blue 1

execute if score ore_ticker red >= oreCoolDown red run function game:run/resources/get_red
execute if score ore_ticker blue >= oreCoolDown blue run function game:run/resources/get_blue

execute as @a run function game:run/resources/checker/direct