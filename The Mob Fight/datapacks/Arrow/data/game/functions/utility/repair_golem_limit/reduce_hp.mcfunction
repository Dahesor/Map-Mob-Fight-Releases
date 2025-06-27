scoreboard players remove $hp calculator 1
execute store result entity @s Health float 1 run scoreboard players get $hp calculator
execute if score $hp calculator matches ..1 run kill @s