tag @s add mine
tag @s add ticking
tag @s add second_ticking
tag @s add temp.Mine.Super
summon item_display ~ ~0.36 ~ {item:{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:11,Enchantments:[{}]}},Tags:["mine","new_mine"],transformation:[0.7f,0f,0f,0f,0f,0.7f,0f,0f,0f,0f,0.7f,0f,0f,0f,0f,1f]}
execute store result score @s match run data get entity @s UUID[0]
scoreboard players operation @e[type=item_display,tag=mine,tag=new_mine,distance=..3] match = @s match
tag @e[type=item_display,tag=mine,tag=new_mine] remove new_mine
data modify entity @s CustomName set value '{"translate":"item.mine.super","color":"gold"}'