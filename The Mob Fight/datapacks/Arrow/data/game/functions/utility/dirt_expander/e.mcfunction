execute unless score destroyMode Data matches 1 run return run kill
scoreboard players set $destroyCount calculator 0

execute positioned ~1 ~1 ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~1 ~1 ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~1 ~ ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~1 ~ ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~1 ~ ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~1 ~-1 ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~1 ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~ ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~ ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~1 ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~1 ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~1 ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~-1 ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~-1 ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~ ~ if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~ ~1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace
execute positioned ~ ~ ~-1 if block ~ ~ ~ coarse_dirt run function game:utility/dirt_expander/replace

execute if predicate map:in_blue run scoreboard players operation dirt blue += $destroyCount calculator
execute if predicate map:in_red run scoreboard players operation dirt red += $destroyCount calculator

kill