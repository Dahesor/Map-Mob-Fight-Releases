scoreboard players set @s carrot_stick -4
scoreboard players set @s calculator 1
execute if block ^ ^ ^ stone align xyz run function developer:record

execute unless block ^ ^ ^ stone if score @s calculator matches 1 if entity @s[distance=..6] positioned ^ ^ ^0.005 run function developer:find_block