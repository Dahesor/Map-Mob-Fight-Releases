advancement revoke @s only game:hit_enemy
execute if entity @s[team=red] run scoreboard players add combatIndex red 3
execute if entity @s[team=blue] run scoreboard players add combatIndex blue 3
scoreboard players add @s scb.support 1