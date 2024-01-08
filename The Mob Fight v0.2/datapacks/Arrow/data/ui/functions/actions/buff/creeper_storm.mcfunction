data remove storage run Pay
data merge storage run {Pay:{diamond:24b,lapis:24b,gold:24b,dirt:64b,netherite:1b}}
data remove storage run PayName
data merge storage run {PayName:"creeper_storm"}


function game:shop/pay/anchor
execute if score @s Payment matches 0 run tellraw @a ["",{"translate":"chat.head.game","color": "aqua"}," ",{"selector":"@s"}," ",{"translate":"激活了"},"[",{"translate":"闪电苦力怕风暴","color": "dark_red"},"]"]
execute if score @s Payment matches 0 if entity @s[team=red] run function game:utility/creeper_storm/red
execute if score @s Payment matches 0 if entity @s[team=blue] run function game:utility/creeper_storm/blue
execute if score @s Payment matches 0 as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 0.3 1
execute as @a run function ui:foolproof/check
execute as @a run function ui:foolproof/redirect

