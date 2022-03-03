execute store result score @s calculator run clear @s #game:swords{isConstant:1b} 0
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run clear @s #game:swords{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/sword

execute store result score @s calculator run clear @s #game:axe{isConstant:1b} 0
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run clear @s #game:axe{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/axe