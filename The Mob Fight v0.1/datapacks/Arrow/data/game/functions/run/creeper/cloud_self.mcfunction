function #map:block_check
execute positioned ~1 ~ ~ run function #map:block_check
execute positioned ~-1 ~ ~ run function #map:block_check
execute positioned ~ ~1 ~ run function #map:block_check
execute positioned ~ ~-1 ~ run function #map:block_check
execute positioned ~ ~ ~1 run function #map:block_check
execute positioned ~ ~ ~-1 run function #map:block_check
execute positioned ~2 ~ ~ run function #map:block_check
execute positioned ~-2 ~ ~ run function #map:block_check
execute positioned ~ ~2 ~ run function #map:block_check
execute positioned ~ ~-2 ~ run function #map:block_check
execute positioned ~ ~ ~2 run function #map:block_check
execute positioned ~ ~ ~-2 run function #map:block_check
execute positioned ~1 ~1 ~ run function #map:block_check
execute positioned ~1 ~-1 ~ run function #map:block_check
execute positioned ~-1 ~1 ~ run function #map:block_check
execute positioned ~-1 ~-1 ~ run function #map:block_check
execute positioned ~1 ~ ~1 run function #map:block_check
execute positioned ~1 ~ ~-1 run function #map:block_check
execute positioned ~-1 ~ ~1 run function #map:block_check
execute positioned ~-1 ~ ~-1 run function #map:block_check
execute positioned ~ ~1 ~1 run function #map:block_check
execute positioned ~ ~-1 ~1 run function #map:block_check
execute positioned ~ ~1 ~-1 run function #map:block_check
execute positioned ~ ~-1 ~-1 run function #map:block_check
execute positioned ~3 ~ ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~-3 ~ ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~3 ~ if predicate game:random_chance/0.8 run function #map:block_check
execute positioned ~1 ~3 ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~-1 ~3 ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~3 ~1 if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~3 ~-1 if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~-3 ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~ ~3 if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~ ~-3 if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~2 ~1 ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~2 ~-1 ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~-2 ~1 ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~-2 ~-1 ~ if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~1 ~2 if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~-1 ~2 if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~1 ~-2 if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~ ~-1 ~-2 if predicate game:random_chance/0.3 run function #map:block_check
execute positioned ~4 ~ ~ if predicate game:random_chance/0.1 run function #map:block_check
execute positioned ~ ~ ~-4 if predicate game:random_chance/0.1 run function #map:block_check
execute positioned ~ ~4 ~ if predicate game:random_chance/0.25 run function #map:block_check
kill @s