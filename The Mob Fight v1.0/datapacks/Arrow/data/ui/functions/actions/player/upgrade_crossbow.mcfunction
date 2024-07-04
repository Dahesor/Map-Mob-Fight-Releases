data remove storage run Pay
data merge storage run {PayName:"Upgrade Crossbow"}

execute if score @s crossbow matches 1 run data merge storage run {Pay:{gold:24b,diamond:18b}}
execute if score @s crossbow matches 2 run data merge storage run {Pay:{gold:36b,diamond:28b}}
execute if score @s crossbow matches 3 run data merge storage run {Pay:{gold:32b,lapis:20b,diamond:16b,netherite:2b}}
execute if score @s crossbow matches 4 run data merge storage run {Pay:{gold:32b,lapis:24b,diamond:18b,netherite:5b}}
execute if score @s crossbow matches 0..4 run function game:shop/pay/anchor
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 run tellraw @s [{"translate":"[商店] ","color": "aqua"},{"translate":"您升级了","color": "white"},"[",{"translate":"弩"},"]"]
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 run scoreboard players add @s crossbow 1 
function ui:actions/player/anchor
function game:player/upgradeables/renew

