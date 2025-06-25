advancement revoke @s only game:utility/used_dirtdemolisher
scoreboard players set #holder$ calculator 0
execute store result score #holder$ calculator run fill ~-10 ~-4 ~-10 ~10 ~3 ~10 air replace coarse_dirt
execute rotated ~ 0 positioned ^ ^ ^2 run loot spawn ~ ~2.5 ~ loot game:item/number_of_dirt
particle block dirt ~ ~ ~ 5 1 5 0.2 200 force @a