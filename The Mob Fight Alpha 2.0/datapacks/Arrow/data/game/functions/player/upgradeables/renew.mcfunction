clear @s #game:weapons{isConstant:1b}

function game:plugin/score_copy

function game:player/upgradeables/armor
function game:player/upgradeables/renew_crossbow
execute unless predicate game:player/full_inventory run loot give @s loot game:player/sword
execute unless predicate game:player/full_inventory run loot give @s loot game:player/axe
execute unless predicate game:player/full_inventory run loot give @s loot game:player/pickaxe