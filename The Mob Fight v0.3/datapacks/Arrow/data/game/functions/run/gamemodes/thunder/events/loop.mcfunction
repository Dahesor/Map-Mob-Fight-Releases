scoreboard players add #thunder_h calculator 1
execute unless predicate game:thunder/under_sky run tag @s remove THUNDER.under_sky
execute if predicate game:thunder/under_sky unless score #thunder_h calculator matches 48.. positioned ~ ~1 ~ run function game:run/gamemodes/thunder/events/loop