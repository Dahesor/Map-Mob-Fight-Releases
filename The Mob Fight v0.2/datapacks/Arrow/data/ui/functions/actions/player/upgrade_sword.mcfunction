data remove storage run Pay
data merge storage run {PayName:"Upgrade Sword"}

execute if score @s sword matches 1 run data merge storage run {Pay:{dirt:8b}}
execute if score @s sword matches 2 run data merge storage run {Pay:{iron:8b}}
execute if score @s sword matches 3 run data merge storage run {Pay:{dirt:10b,diamond:8b}}
execute if score @s sword matches 4 run data merge storage run {Pay:{diamond:12b,gold:12b,netherite:2b}}
execute if score @s sword matches 0..4 run function game:shop/pay/anchor
execute if score @s sword matches 0..4 if score @s Payment matches 0 run tellraw @s [{"translate":"[商店] ","color": "aqua"},{"translate":"您升级了","color": "white"},"[",{"translate":"剑"},"]"]
execute if score @s sword matches 0..4 if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s sword matches 0..4 if score @s Payment matches 0 run scoreboard players add @s sword 1 
function ui:actions/player/anchor
function game:player/upgradeables/renew

