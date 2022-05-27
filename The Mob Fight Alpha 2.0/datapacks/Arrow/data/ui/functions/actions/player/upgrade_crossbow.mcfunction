data remove storage run Pay
execute if score @s crossbow matches 1 run data merge storage run {Pay:{gold:4b}}
execute if score @s crossbow matches 2 run data merge storage run {Pay:{gold:8b,lapis:8b}}
execute if score @s crossbow matches 3 run data merge storage run {Pay:{gold:20b,lapis:8b,diamond:7b}}
execute if score @s crossbow matches 4 run data merge storage run {Pay:{gold:20b,lapis:12b,diamond:10b,quartz:20b,netherite:3b}}
execute if score @s crossbow matches 0..4 run function game:shop/pay/anchor
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 run tellraw @s [{"translate":"[商店] ","color": "aqua"},{"translate":"您升级了","color": "white"},"[",{"translate":"弩"},"]"]
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s crossbow matches 0..4 if score @s Payment matches 0 run scoreboard players add @s crossbow 1 
function ui:actions/player/anchor
function game:player/upgradeables/renew

