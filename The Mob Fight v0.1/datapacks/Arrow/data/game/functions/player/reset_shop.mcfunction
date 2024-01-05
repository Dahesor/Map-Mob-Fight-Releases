scoreboard players set #temp calculator 0
execute unless score debug Data matches 1.. unless entity @e[type=armor_stand,tag=shop_notation,distance=..9] run scoreboard players set #temp calculator 1
execute unless score debug Data matches 1.. unless entity @e[type=armor_stand,tag=shop_notation,distance=..9] run function ui:actions/mainpage/anchor