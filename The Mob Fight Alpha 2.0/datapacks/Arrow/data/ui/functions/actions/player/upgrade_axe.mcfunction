data remove storage run Pay
execute if score @s axe matches 1 run data merge storage run {Pay:{dirt:10b}}
execute if score @s axe matches 2 run data merge storage run {Pay:{iron:10b}}
execute if score @s axe matches 3 run data merge storage run {Pay:{dirt:10b,diamond:8b}}
execute if score @s axe matches 4 run data merge storage run {Pay:{diamond:10b,quartz:8b,netherite:2b}}
execute if score @s axe matches 0..4 run function game:shop/pay/anchor
execute if score @s axe matches 0..4 if score @s Payment matches 0 run tellraw @s [{"translate":"[商店] ","color": "aqua"},{"translate":"您升级了","color": "white"},"[",{"translate":"斧"},"]"]
execute if score @s axe matches 0..4 if score @s Payment matches 0 at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s axe matches 0..4 if score @s Payment matches 0 run scoreboard players add @s axe 1 
function ui:actions/player/anchor
function game:player/upgradeables/renew

