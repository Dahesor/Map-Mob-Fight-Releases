function game:plugin/score_copy
data remove storage run Pay
data merge storage run {PayName:"blast_protection"}

execute if score blast_protection calculator matches 0 run data merge storage run {Pay:{dirt:16b,lapis:1b,diamond:1b}}
execute if score blast_protection calculator matches 1 run data merge storage run {Pay:{dirt:32b,iron:10b,lapis:3b,diamond:1b}}
execute if score blast_protection calculator matches 0..1 run function game:shop/pay/anchor
execute if score blast_protection calculator matches 0..1 if score @s[team=red] Payment matches 0 run scoreboard players add blast_protection red 1
execute if score blast_protection calculator matches 0..1 if score @s[team=blue] Payment matches 0 run scoreboard players add blast_protection blue 1
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"爆炸保护附魔","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"爆炸保护附魔","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 as @a run function game:player/upgradeables/renew
execute as @a[scores={UI=70}] run function ui:foolproof/redirect

