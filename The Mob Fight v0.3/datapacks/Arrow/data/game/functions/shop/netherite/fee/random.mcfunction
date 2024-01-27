kill @e[tag=vand.feeMarker]

summon armor_stand 0 10 0 {Tags:["vand.feeMarker","map_notation","intelligent_name"],Marker:1b,Invisible:1b,CustomNameVisible:1b,CustomName:""}
execute store result score vandFeeType Data run data get entity @e[type=armor_stand,limit=1,tag=vand.feeMarker] UUID[1]
scoreboard players operation vandFeeType Data %= #7 calculator
execute as @e[type=marker,limit=1,tag=altar_red] at @s run tp @e[type=armor_stand,limit=1,tag=vand.feeMarker] ~ ~1.2 ~
summon armor_stand 0 10 0 {Tags:["vand.feeMarker","map_notation","intelligent_name","double_2hdh_hfkjha"],Marker:1b,Invisible:1b,CustomNameVisible:1b,CustomName:""}
execute as @e[type=marker,limit=1,tag=altar_blue] at @s run tp @e[type=armor_stand,limit=1,tag=vand.feeMarker,tag=double_2hdh_hfkjha] ~ ~1.2 ~

execute if score vandFeeType Data matches ..0 run execute as @e[type=armor_stand,tag=vand.feeMarker] run data merge entity @s {CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"dirt","with":["64"]}]'}
execute if score vandFeeType Data matches 1 run execute as @e[type=armor_stand,tag=vand.feeMarker] run data merge entity @s {CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"iron","with":["32"]}]'}
execute if score vandFeeType Data matches 2 run execute as @e[type=armor_stand,tag=vand.feeMarker] run data merge entity @s {CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"gold","with":["32"]}]'}
execute if score vandFeeType Data matches 3 run execute as @e[type=armor_stand,tag=vand.feeMarker] run data merge entity @s {CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"copper","with":["32"]}]'}
execute if score vandFeeType Data matches 4 run execute as @e[type=armor_stand,tag=vand.feeMarker] run data merge entity @s {CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"lapis","with":["30"]}]'}
execute if score vandFeeType Data matches 5 run execute as @e[type=armor_stand,tag=vand.feeMarker] run data merge entity @s {CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"diamond","with":["26"]}]'}
execute if score vandFeeType Data matches 6.. run execute as @e[type=armor_stand,tag=vand.feeMarker] run data merge entity @s {CustomName:'["",{"translate":"logic.or","bold": true}," ",{"translate":"diamond","with":["32"]}]'}

#>
# specific tag: the random fee
# @internal function game:shop/netherite/fee/
#define tag vand.feeMarker

#>
# specific score: the item count
# @internal function game:shop/netherite/fee/
#define score_holder $feeItemcount