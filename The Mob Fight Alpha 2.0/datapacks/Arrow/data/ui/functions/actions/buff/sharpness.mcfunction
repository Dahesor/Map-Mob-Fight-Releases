function game:plugin/score_copy
data remove storage run Pay
execute if score sharpness calculator matches 0 run data merge storage run {Pay:{dirt:10b,iron:3b,lapis:1b}}
execute if score sharpness calculator matches 1 run data merge storage run {Pay:{dirt:24b,iron:12b,lapis:3b}}
execute if score sharpness calculator matches 0..1 run function game:shop/pay/anchor
execute if score sharpness calculator matches 0..1 if score @s[team=red] Payment matches 0 run scoreboard players add sharpness red 1
execute if score sharpness calculator matches 0..1 if score @s[team=blue] Payment matches 0 run scoreboard players add sharpness blue 1
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"锋利附魔","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"锋利附魔","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute as @a run function game:player/upgradeables/renew
execute as @a run function ui:foolproof/redirect

