function game:plugin/score_copy
data remove storage run Pay
data merge storage run {PayName:"pigmanSlave"}

execute if score pigmanSlaves calculator matches 0 run data merge storage run {Pay:{gold:4b,copper:3b}}
execute if score pigmanSlaves calculator matches 1 run data merge storage run {Pay:{gold:5b,copper:4b}}
execute if score pigmanSlaves calculator matches 2 run data merge storage run {Pay:{gold:3b,copper:2b,dirt:10b}}
execute if score pigmanSlaves calculator matches 3 run data merge storage run {Pay:{gold:3b,copper:4b,diamond:5b}}
execute if score pigmanSlaves calculator matches 0..3 run function game:shop/pay/anchor
execute if score pigmanSlaves calculator matches 0 if score @s[team=red] Payment matches 0 run function game:plugin/pigman/red_1
execute if score pigmanSlaves calculator matches 1 if score @s[team=red] Payment matches 0 run function game:plugin/pigman/red_2
execute if score pigmanSlaves calculator matches 2 if score @s[team=red] Payment matches 0 run function game:plugin/pigman/red_3
execute if score pigmanSlaves calculator matches 3 if score @s[team=red] Payment matches 0 run function game:plugin/pigman/red_4
execute if score pigmanSlaves calculator matches 0 if score @s[team=blue] Payment matches 0 run function game:plugin/pigman/blue_1
execute if score pigmanSlaves calculator matches 1 if score @s[team=blue] Payment matches 0 run function game:plugin/pigman/blue_2
execute if score pigmanSlaves calculator matches 2 if score @s[team=blue] Payment matches 0 run function game:plugin/pigman/blue_3
execute if score pigmanSlaves calculator matches 3 if score @s[team=blue] Payment matches 0 run function game:plugin/pigman/blue_4
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"pigman.slave","color": "green"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"pigman.slave","color": "greeb"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~

execute as @a run function ui:foolproof/redirect