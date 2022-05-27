data remove storage run Pay
data merge storage run {Pay:{dirt:16b,gold:16b,diamond:1b}}

function game:shop/pay/anchor
function game:plugin/score_copy
execute if score @s Payment matches 0 if entity @s[team=red] unless score absoprtionCooldown red matches 1.. run effect give @a[team=red] absorption 45 3
execute if score @s Payment matches 0 if entity @s[team=red] unless score absoprtionCooldown red matches 1.. if score magic_occult calculator matches 2.. run effect give @a[team=red] absorption 55 3
execute if score @s Payment matches 0 if entity @s[team=red] unless score absoprtionCooldown red matches 1.. if score magic_occult calculator matches 3.. run effect give @a[team=red] absorption 55 4
execute if score @s Payment matches 0 if entity @s[team=red] unless score absoprtionCooldown red matches 1.. if score magic_occult calculator matches 3.. if score society_populate calculator matches 3.. run effect give @a[team=red] absorption 70 5

execute if score @s Payment matches 0 if entity @s[team=blue] unless score absoprtionCooldown blue matches 1.. run effect give @a[team=blue] absorption 45 3
execute if score @s Payment matches 0 if entity @s[team=blue] unless score absoprtionCooldown blue matches 1.. if score magic_occult calculator matches 2.. run effect give @a[team=blue] absorption 55 3
execute if score @s Payment matches 0 if entity @s[team=blue] unless score absoprtionCooldown blue matches 1.. if score magic_occult calculator matches 3.. run effect give @a[team=blue] absorption 55 4
execute if score @s Payment matches 0 if entity @s[team=blue] unless score absoprtionCooldown blue matches 1.. if score magic_occult calculator matches 3.. if score society_populate calculator matches 3.. run effect give @a[team=blue] absorption 70 5

execute if score @s Payment matches 0 if entity @s[team=red] unless score absoprtionCooldown red matches 1.. run tellraw @a[team=red] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"圣灵守护","color": "red","italic": false},"]"]
execute if score @s Payment matches 0 if entity @s[team=blue] unless score absoprtionCooldown blue matches 1.. run tellraw @a[team=blue] ["",{"translate":"[商店] ","color": "aqua"},{"selector":"@s","color": "yellow"}," ",{"translate":"购买了"},"[",{"translate":"圣灵守护","color": "red","italic": false},"]"]
execute if score @s Payment matches 0 if entity @s[team=red] unless score absoprtionCooldown red matches 1.. as @a[team=red] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.1 0.4
execute if score @s Payment matches 0 if entity @s[team=blue] unless score absoprtionCooldown blue matches 1.. as @a[team=blue] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.1 0.4

execute if score @s Payment matches 0 if entity @s[team=red] unless score absoprtionCooldown red matches 1.. run scoreboard players set absoprtionCooldown red 85
execute if score @s Payment matches 0 if entity @s[team=blue] unless score absoprtionCooldown blue matches 1.. run scoreboard players set absoprtionCooldown blue 85

function ui:actions/buff/anchor