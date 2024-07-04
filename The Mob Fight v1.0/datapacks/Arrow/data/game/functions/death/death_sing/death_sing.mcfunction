function game:death/death_sing/particle
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"player.death_sing","color": "yellow","with":[{"selector":"@s"}]}]
execute on attacker run kill @s[type=!player]
kill @e[type=#game:mobs,distance=..3]
execute as @e[type=#game:mobs,distance=..6.5] run damage @s 8 mob_attack
execute as @e[type=#game:mobs,distance=..4.5] run damage @s 5 generic_kill