scoreboard players add ore_ticker red 1
scoreboard players add ore_ticker blue 1

execute if entity @a[team=red,predicate=game:player/hero_of_village,limit=1] run scoreboard players add ore_ticker red 1
execute if entity @a[team=blue,predicate=game:player/hero_of_village,limit=1] run scoreboard players add ore_ticker blue 1

execute if score ore_ticker red >= oreCoolDown red run function game:run/resources/get_red
execute if score ore_ticker blue >= oreCoolDown blue run function game:run/resources/get_blue

execute as @a run function game:run/resources/checker/direct