advancement revoke @s only game:count_as_enemy
scoreboard players set @s deathSourceCD 600
execute if entity @s[team=red] run scoreboard players add combatIndex red 5
execute if entity @s[team=blue] run scoreboard players add combatIndex blue 5