data remove storage run Pay
data merge storage run {PayName:"Upgrade Armor"}
execute if score @s armor matches 2 run data merge storage run {Pay:{dirt:8b,iron:2b}}
execute if score @s armor matches 3 run data merge storage run {Pay:{dirt:9b,iron:3b}}
execute if score @s armor matches 4 run data merge storage run {Pay:{dirt:12b,iron:8b}}
execute if score @s armor matches 5 run data merge storage run {Pay:{dirt:16b,iron:14b}}
execute if score @s armor matches 6 run data merge storage run {Pay:{dirt:28b,diamond:15b}}
execute if score @s armor matches 7 run data merge storage run {Pay:{dirt:32b,diamond:15b,netherite:2b}}
execute if score @s armor matches 8 run data merge storage run {Pay:{dirt:48b,gold:24b,diamond:24b,netherite:4b}}
execute if score @s armor matches 0..8 run function game:shop/pay/anchor
execute if score @s armor matches 0..8 if score @s Payment matches 0 run tellraw @s [{"translate":"[商店] ","color": "aqua"},{"translate":"您升级了","color": "white"},"[",{"translate":"盔甲"},"]"]
execute if score @s armor matches 0..8 if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s armor matches 0..8 if score @s Payment matches 0 run scoreboard players add @s armor 1 
function ui:actions/player/anchor
function game:player/upgradeables/renew

