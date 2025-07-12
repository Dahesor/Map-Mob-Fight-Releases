data remove storage run Pay
data merge storage run {Pay:{diamond:2b,lapis:4b,gold:6b}}
data merge storage run {PayName:{"translate":"反胃退散","color": "gray"}}

function game:shop/pay/anchor

execute if score @s Payment matches 0 run function game:utility/eco/calc

execute if score @s Payment matches 0 if entity @s[team=red] run scoreboard players set no_nausea red 1
execute if score @s Payment matches 0 if entity @s[team=blue] run scoreboard players set no_nausea blue 1
execute if score @s Payment matches 0 if entity @s[team=red] run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"反胃退散","color": "green"},"]"]
execute if score @s Payment matches 0 if entity @s[team=blue] run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"反胃退散","color": "green"},"]"]
execute if score @s Payment matches 0 if entity @s[team=red] as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 if entity @s[team=blue] as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if entity @s[team=red] as @a[gamemode=adventure,team=red] run function ui:actions/buff/no_nausea_clear
execute if entity @s[team=blue] as @a[gamemode=adventure,team=blue] run function ui:actions/buff/no_nausea_clear
execute if score @s Payment matches 0 run scoreboard players add @s scb.support 20
tag @s add excluded
execute as @a[tag=!excluded] run function ui:foolproof/check
execute as @a run function ui:foolproof/redirect
tag @a remove excluded