execute positioned ~1 ~ ~1 if predicate game:places/summon_free run summon skeleton
execute positioned ~-1 ~ ~1 if predicate game:places/summon_free run summon skeleton
execute positioned ~ ~ ~-1 if predicate game:places/summon_free run summon skeleton

execute positioned ~1 ~ ~1 unless predicate game:places/summon_free positioned ~-1 ~ ~-1 run summon skeleton
execute positioned ~-1 ~ ~1 unless predicate game:places/summon_free positioned ~1 ~ ~-1 run summon skeleton
execute positioned ~ ~ ~-1 unless predicate game:places/summon_free positioned ~-1 ~ ~1 run summon skeleton
kill @s
