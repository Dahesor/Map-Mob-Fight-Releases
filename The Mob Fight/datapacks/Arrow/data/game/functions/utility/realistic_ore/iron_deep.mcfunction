scoreboard players remove @s monitor.iron_d 1
function game:utility/realistic_ore/drops/iron
execute at @s run playsound minecraft:entity.item.pickup master @a
tag @s add just_mined