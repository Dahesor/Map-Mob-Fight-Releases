scoreboard players set @s carrot_stick 0
scoreboard players set @s calculator 1
execute if block ^ ^ ^ #game:ore_spawn_base align xyz run function developer:record

execute if block ^ ^ ^ air if score @s calculator matches 1 if entity @s[distance=..6] positioned ^ ^ ^0.0023 run function developer:find_block