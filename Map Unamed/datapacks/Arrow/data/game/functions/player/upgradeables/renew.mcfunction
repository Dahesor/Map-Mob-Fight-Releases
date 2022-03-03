clear @s #game:weapons{isConstant:1b}

function game:plugin/score_copy

execute unless predicate game:player/full_inventory run loot give @s loot game:player/sword
execute unless predicate game:player/full_inventory run loot give @s loot game:player/axe

