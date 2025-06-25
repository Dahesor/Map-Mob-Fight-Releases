data modify storage run item set value {}
data modify storage run item set from entity @s HandItems[1]
execute if data storage run item{id:"minecraft:tipped_arrow"} run return fail
execute if data storage run item{id:"minecraft:totem_of_undying"} run return fail
execute at @s run playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 1.4
execute at @s run particle dust 1 0.969 0 1.4 ~ ~2 ~ 0.1 0.1 0.1 0.1 10 force @a

scoreboard players set $success calculator 1
item replace entity @s weapon.offhand with totem_of_undying
function game:run/mob_second/lifer/particle