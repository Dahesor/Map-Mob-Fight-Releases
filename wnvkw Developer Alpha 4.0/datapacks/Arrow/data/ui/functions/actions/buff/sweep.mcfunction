function game:plugin/score_copy
data remove storage run Pay
execute if score sweep calculator matches 0 run data merge storage run {Pay:{dirt:7b,iron:4b,lapis:1b}}
execute if score sweep calculator matches 1 run data merge storage run {Pay:{dirt:14b,iron:6,lapis:2b}}
execute if score sweep calculator matches 2 run data merge storage run {Pay:{dirt:21b,iron:9b,lapis:3b}}
data merge storage run {PayName:"sweep"}

execute if score sweep calculator matches 0..2 run function game:shop/pay/anchor
execute if score sweep calculator matches 0..2 if score @s[team=red] Payment matches 0 run scoreboard players add sweep red 1
execute if score sweep calculator matches 0..2 if score @s[team=blue] Payment matches 0 run scoreboard players add sweep blue 1
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"横扫之刃附魔","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"横扫之刃附魔","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 as @a run function game:player/upgradeables/renew
execute as @a run function ui:foolproof/redirect

