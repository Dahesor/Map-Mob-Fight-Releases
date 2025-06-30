scoreboard players remove @s monitor.gold 1
function game:utility/realistic_ore/drops/gold
execute at @s run playsound minecraft:entity.item.pickup master @a
tag @s add just_mined