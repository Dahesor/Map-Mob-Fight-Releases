execute if predicate game:places/summon_free run return run function game:arrows/specialize
execute unless predicate game:places/summon_free if entity @s[tag=actived] if predicate map:in_blue run return run function game:plugin/unstack/test
function game:plugin/unstack/test_flip
