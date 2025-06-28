scoreboard players remove @s monitor.diam_d 1
function game:utility/realistic_ore/drops/diamond
execute at @s run playsound minecraft:entity.item.pickup master @a
tag @s add just_mined