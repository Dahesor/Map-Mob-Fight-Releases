scoreboard players remove @s[scores={deathSourceCD=1..}] deathSourceCD 1
execute if entity @s[scores={revive_cooldown=-20..}] run function game:death/revive/countdown
execute if entity @s[team=!] run function game:player/self
kill @s[gamemode=adventure,predicate=map:too_high]
execute if score @s Item.power_star matches 1.. run function game:player/warped_stick/power_star/ticker
execute if score @s Item.arrow_shield matches 1.. run function game:player/warped_stick/projectile_shield/ticker