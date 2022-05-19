data remove storage run Pay
execute if score @s crossbow matches 1 run data merge storage run {Pay:{dirt:10b,diamond:7b}}
execute if score @s crossbow matches 2 run data merge storage run {Pay:{dirt:24b,diamond:8b,gold:7b,netherite:2b}}
execute if score @s crossbow matches 0..2 run function game:shop/pay/anchor
execute if score @s crossbow matches 0..2 if score @s Payment matches 0 run tellraw @s [{"translate":"[商店] ","color": "aqua"},{"translate":"您升级了","color": "white"},"[",{"translate":"镐"},"]"]
execute if score @s crossbow matches 0..2 if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s crossbow matches 0..2 if score @s Payment matches 0 run scoreboard players add @s pickaxe 1 
function ui:actions/player/anchor
function game:player/upgradeables/renew

