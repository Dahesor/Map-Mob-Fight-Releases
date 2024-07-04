#tellraw @a [{"text":"Initial: "},{"nbt":"Health","entity": "@s"}]

function game:run/crystal/chain/type_decay

function game:run/crystal/damage/macro with storage run macro_death
execute unless score #same calculator matches 1.. at @s run particle minecraft:enchant ~ ~3 ~ 0 0 0 0.3 50 normal
#tellraw @a [{"text":"Final: "},{"nbt":"Health","entity": "@s"}]
