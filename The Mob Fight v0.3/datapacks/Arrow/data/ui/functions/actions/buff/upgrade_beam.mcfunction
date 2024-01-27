function game:plugin/score_copy
data remove storage run Pay
data merge storage run {PayName:"upgrade_beem"}

execute if score beemLevel calculator matches 1 run data merge storage run {Pay:{dirt:20b,diamond:4b}}
execute if score beemLevel calculator matches 2 run data merge storage run {Pay:{dirt:24b,diamond:8b}}
execute if score beemLevel calculator matches 3 run data merge storage run {Pay:{dirt:40b,diamond:10b}}
execute if score beemLevel calculator matches 4 run data merge storage run {Pay:{dirt:48b,diamond:12b,netherite:1b}}
execute if score beemLevel calculator matches 1..4 run function game:shop/pay/anchor
execute if score @s[team=red] Payment matches 0 run scoreboard players add beemLevel red 1
execute if score @s[team=blue] Payment matches 0 run scoreboard players add beemLevel blue 1
execute if score @s[team=red] Payment matches 0 run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"水晶防御激光","color": "light_purple"},"]"]
execute if score @s[team=blue] Payment matches 0 run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"升级了"},"[",{"translate":"水晶防御激光","color": "light_purple"},"]"]
execute if score @s[team=red] Payment matches 0 as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s[team=blue] Payment matches 0 as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
tag @s add excluded
execute as @a[tag=!excluded] run function ui:foolproof/check
execute as @a run function ui:foolproof/redirect
tag @a remove excluded