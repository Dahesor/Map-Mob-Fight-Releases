data remove storage run Pay
data merge storage run {Pay:{dirt:5b}}
function game:shop/pay/anchor
execute if score @s Payment matches 0 run fill -40 48 -6 -41 49 -6 moving_piston
execute if score @s Payment matches 0 run scoreboard players set #map$stoneland$blue_water calculator 400
execute if score @s Payment matches 0 run tag @s add mapStoneLand.sound
execute if score @s Payment matches 0 at @s run playsound ui.button.click player @s ~ ~ ~ 1 2