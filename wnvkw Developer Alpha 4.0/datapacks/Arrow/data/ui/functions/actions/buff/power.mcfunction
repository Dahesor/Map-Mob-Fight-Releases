function game:plugin/score_copy
data remove storage run Pay
data merge storage run {PayName:"power"}

execute if score power calculator matches 0 run data merge storage run {Pay:{dirt:9b,copper:3b,lapis:1b}}
execute if score power calculator matches 1 run data merge storage run {Pay:{dirt:18b,copper:9b,lapis:3b}}
execute if score power calculator matches 0..1 run function game:shop/pay/anchor
execute if score power calculator matches 0..1 if score @s[team=red] Payment matches 0 run scoreboard players add power red 1
execute if score power calculator matches 0..1 if score @s[team=blue] Payment matches 0 run scoreboard players add power blue 1
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"力量附魔","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"力量附魔","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 as @a run function game:player/upgradeables/renew
execute as @a run function ui:foolproof/redirect

