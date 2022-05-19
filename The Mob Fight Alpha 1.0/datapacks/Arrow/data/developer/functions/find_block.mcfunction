scoreboard players set @s carrot_stick -2
scoreboard players set @s calculator 1
execute if block ^ ^ ^ stone align xyz run function developer:record

execute if block ^ ^ ^ air if score @s calculator matches 1 if entity @s[distance=..6] positioned ^ ^ ^0.005 run function developer:find_block