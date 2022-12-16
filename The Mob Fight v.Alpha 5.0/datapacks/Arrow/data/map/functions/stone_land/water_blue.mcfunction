data remove storage run Pay
data merge storage run {Pay:{dirt:5b}}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run fill -38 45 -10 -38 46 -10 air
execute if score @s Payment matches 0 run scoreboard players set #map$stoneland$blue_water calculator 400
execute if score @s Payment matches 0 run tag @s add mapStoneLand.sound
execute if score @s Payment matches 0 at @s run playsound ui.button.click player @s ~ ~ ~ 1 2
function ui:actions/player/anchor