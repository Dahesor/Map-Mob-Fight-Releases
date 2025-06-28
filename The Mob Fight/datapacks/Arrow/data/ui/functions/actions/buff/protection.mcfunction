function game:plugin/score_copy
data remove storage run Pay
execute if score protection calculator matches 0 run data merge storage run {Pay:{dirt:8b,iron:4b,copper:4b}}
execute if score protection calculator matches 1 run data merge storage run {Pay:{dirt:20b,iron:16b,copper:16b}}
execute if score protection calculator matches 2 run data merge storage run {Pay:{dirt:32b,iron:24b,copper:24b}}
execute if score protection calculator matches 3 run data merge storage run {Pay:{dirt:64b,netherite:1b}}
data merge storage run {PayName:{"translate":"enchant.protection.name","color": "light_purple"}}

execute if score protection calculator matches 0..3 run function game:shop/pay/anchor

execute if score @s Payment matches 0 run function game:utility/eco/calc

execute if score protection calculator matches 0..3 if score @s[team=red] Payment matches 0 run scoreboard players add protection red 1
execute if score protection calculator matches 0..3 if score @s[team=blue] Payment matches 0 run scoreboard players add protection blue 1
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"enchant.protection.name","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"enchant.protection.name","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=red] Payment matches 0 as @a[team=red] run function game:player/upgradeables/renew
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] run function game:player/upgradeables/renew


tag @s add excluded
execute as @a[tag=!excluded] run function ui:foolproof/check
execute as @a run function ui:foolproof/redirect
tag @a remove excluded
