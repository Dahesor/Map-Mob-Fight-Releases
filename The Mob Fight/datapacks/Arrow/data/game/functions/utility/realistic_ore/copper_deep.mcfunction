scoreboard players remove @s monitor.copper_d 1
function game:utility/realistic_ore/drops/copper
execute at @s run playsound minecraft:entity.item.pickup master @a
tag @s add just_mined