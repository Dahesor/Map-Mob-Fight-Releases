data remove storage run Pay
data merge storage run {Pay:{gold:12b,lapis:8b,diamond:2b}}
data remove storage run PayName
data merge storage run {PayName:"speedy"}

function game:shop/pay/anchor
execute if score @s Payment matches 0 if entity @s[team=red] run function game:plugin/speedy/red
execute if score @s Payment matches 0 if entity @s[team=blue] run function game:plugin/speedy/blue
execute if score @s Payment matches 0 if entity @s[team=red] run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"激活了"},"[",{"translate":"阿涅摩伊的祝福","color": "aqua"},"]"]
execute if score @s Payment matches 0 if entity @s[team=blue] run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"激活了"},"[",{"translate":"阿涅摩伊的祝福","color": "aqua"},"]"]
execute if score @s Payment matches 0 if entity @s[team=red] as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
execute if score @s Payment matches 0 if entity @s[team=blue] as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~
function ui:actions/buff/anchor