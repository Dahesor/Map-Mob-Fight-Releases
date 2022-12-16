function game:plugin/score_copy
execute store result score @s calculator run clear @s #game:swords{isConstant:1b} 0
execute unless score @s calculator matches 1 run clear @s #game:swords{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/sword

execute store result score @s calculator run clear @s #game:axe{isConstant:1b} 0
execute unless score @s calculator matches 1 run clear @s #game:axe{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/axe

execute store result score @s calculator run clear @s #game:pickaxe{isConstant:1b} 0
execute unless score @s calculator matches 1 run clear @s #game:pickaxe{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/pickaxe

execute store result score @s calculator run clear @s #game:shovels{isConstant:1b} 0
execute unless score @s calculator matches 1 run clear @s #game:shovels{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/shovel

execute store result score @s calculator run clear @s crossbow{isConstant:1b} 0
execute unless score @s calculator matches 1 run clear @s crossbow{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run function game:player/upgradeables/renew_crossbow