function game:plugin/score_copy
data remove storage run Pay
execute if score efficiency calculator matches 2 run data merge storage run {Pay:{dirt:7b,lapis:2b,iron:2b}}
execute if score efficiency calculator matches 3 run data merge storage run {Pay:{dirt:12b,lapis:4b,iron:4b}}
execute if score efficiency calculator matches 4 run data merge storage run {Pay:{dirt:21b,iron:7b,lapis:6b}}

execute if score efficiency calculator matches 2..4 run function game:shop/pay/anchor
execute if score efficiency calculator matches 2..4 if score @s[team=red] Payment matches 0 run scoreboard players add efficiency red 1
execute if score efficiency calculator matches 2..4 if score @s[team=blue] Payment matches 0 run scoreboard players add efficiency blue 1
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"效率附魔","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"效率附魔","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute as @a run function game:player/upgradeables/renew
execute as @a run function ui:foolproof/redirect

