scoreboard players remove @s monitor.lapis 1
function game:utility/realistic_ore/drops/lapis
execute at @s run playsound minecraft:entity.item.pickup master @a
tag @s add just_mined