function game:plugin/score_copy

function game:player/upgradeables/strict/sword
execute unless score @s calculator matches 1 run clear @s #game:swords{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/sword

function game:player/upgradeables/strict/axe
execute unless score @s calculator matches 1 run clear @s #game:axe{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/axe

function game:player/upgradeables/strict/pickaxe
execute unless score @s calculator matches 1 run clear @s #game:pickaxe{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/pickaxe

execute store result score @s calculator run clear @s iron_shovel{isConstant:1b} 0
execute unless score @s calculator matches 1 run clear @s #game:shovels{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run loot give @s loot game:player/shovel

function game:player/upgradeables/strict/crossbow
execute unless score @s calculator matches 1 run clear @s crossbow{isConstant:1b}
execute unless score @s calculator matches 1 unless predicate game:player/full_inventory run function game:player/upgradeables/force_renew_crossbow