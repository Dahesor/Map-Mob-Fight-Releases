execute if score @s crossbow matches 1 run data merge storage run {Pay:[{"type":"gold",Count:10b}]}
execute if score @s crossbow matches 2 run data merge storage run {Pay:[{"type":"gold",Count:10b},{"type":"lapis",Count:12b}]}
execute if score @s crossbow matches 3 run data merge storage run {Pay:[{"type":"gold",Count:10b},{"type":"lapis",Count:12b},{"type":"diamond",Count:8b}]}
execute if score @s crossbow matches 4 run data merge storage run {Pay:[{"type":"gold",Count:10b},{"type":"lapis",Count:12b},{"type":"diamond",Count:8b},{"type":"quartz",Count:24b}]}
execute if score @s crossbow matches 0..4 run function game:shop/pay/anchor
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 run tellraw @s [{"translate":"[商店] ","color": "aqua"},{"translate":"您升级了","color": "white"},"[",{"translate":"弩"},"]"]
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 run scoreboard players add @s crossbow 1 
function ui:actions/player/anchor
function game:player/upgradeables/renew

