data remove storage run crossbowTemp
execute if data entity @s Inventory[{id:"minecraft:crossbow",tag:{isConstant:1b}}].tag.ChargedProjectiles[].id run data modify storage run crossbowTemp set from entity @s Inventory[{id:"minecraft:crossbow",tag:{isConstant:1b}}].tag.ChargedProjectiles[0]

clear @s #game:weapons{isConstant:1b}

function game:plugin/score_copy

function game:player/upgradeables/armor
execute unless predicate game:player/full_inventory run loot give @s loot game:player/sword
execute unless predicate game:player/full_inventory run loot give @s loot game:player/axe
execute unless predicate game:player/full_inventory run loot give @s loot game:player/pickaxe

function game:player/upgradeables/renew_crossbow