scoreboard players operation @s revive_cooldown = VILLAGER.reviveCooldown Options
execute if score destroyMode Data matches 1.. unless score VILLAGER.super Data matches 1.. run scoreboard players operation @s revive_cooldown *= #2 calculator
execute if score VILLAGER.super Data matches 1.. run scoreboard players operation @s revive_cooldown *= #3 calculator