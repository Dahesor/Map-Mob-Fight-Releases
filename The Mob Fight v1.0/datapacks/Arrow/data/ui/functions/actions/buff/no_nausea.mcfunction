data remove storage run Pay
data merge storage run {Pay:{diamond:6b,lapis:6b,gold:16b}}
data merge storage run {PayName:"no_nausea"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run scoreboard players set no_nausea red 1
execute if score @s Payment matches 0 if entity @s[team=blue] run scoreboard players set no_nausea blue 1
execute if score @s Payment matches 0 if entity @s[team=red] run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"反胃退散","color": "green"},"]"]
execute if score @s Payment matches 0 if entity @s[team=blue] run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"反胃退散","color": "green"},"]"]
execute if score @s Payment matches 0 if entity @s[team=red] as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 if entity @s[team=blue] as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/buff/anchor